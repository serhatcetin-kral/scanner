
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';

class AdConsentService {
  static bool privacyFlowCompleted = false;

  static final ValueNotifier<int> consentChanges =
  ValueNotifier<int>(0);

  static Future<void> requestTrackingPermission() async {
    if (defaultTargetPlatform != TargetPlatform.iOS) {
      return;
    }

    try {
      final status =
      await AppTrackingTransparency.trackingAuthorizationStatus;

      if (status == TrackingStatus.notDetermined) {
        final result =
        await AppTrackingTransparency.requestTrackingAuthorization();

        debugPrint('ATT authorization result: $result');
      } else {
        debugPrint('ATT authorization status: $status');
      }
    } catch (e) {
      debugPrint('ATT permission error: $e');
    }
  }

  // Step 1: Handle Google UMP consent only.
  // Do not initialize Mobile Ads here.
  static Future<bool> initialize() async {
    final completer = Completer<void>();

    ConsentInformation.instance.requestConsentInfoUpdate(
      ConsentRequestParameters(),
          () {
        ConsentForm.loadAndShowConsentFormIfRequired(
              (FormError? error) {
            if (error != null) {
              debugPrint(
                'Consent form error: ${error.message}',
              );
            }

            if (!completer.isCompleted) {
              completer.complete();
            }
          },
        );
      },
          (FormError error) {
        debugPrint(
          'Consent update error: ${error.message}',
        );

        if (!completer.isCompleted) {
          completer.complete();
        }
      },
    );

    await completer.future;

    final consentStatus =
    await ConsentInformation.instance.getConsentStatus();

    final privacyStatus =
    await ConsentInformation.instance
        .getPrivacyOptionsRequirementStatus();

    debugPrint('UMP Consent Status: $consentStatus');
    debugPrint('UMP Privacy Options: $privacyStatus');

    final canRequestAds =
    await ConsentInformation.instance.canRequestAds();

    debugPrint('UMP Can Request Ads: $canRequestAds');

    return canRequestAds;
  }

  // Step 3: Initialize Mobile Ads after ATT has been handled.
  static Future<void> initializeMobileAds() async {
    final canRequestAds =
    await ConsentInformation.instance.canRequestAds();

    if (!canRequestAds) {
      debugPrint(
        'Mobile Ads not initialized: UMP does not permit ad requests.',
      );
      return;
    }

    await MobileAds.instance.initialize();

    debugPrint('Google Mobile Ads initialized.');
  }

  static Future<void> showPrivacyOptions() async {
    final completer = Completer<void>();

    ConsentForm.showPrivacyOptionsForm(
          (FormError? error) {
        if (error != null) {
          debugPrint(
            'Privacy options error: ${error.message}',
          );
        } else {
          consentChanges.value++;
        }

        if (!completer.isCompleted) {
          completer.complete();
        }
      },
    );

    await completer.future;
  }
}
