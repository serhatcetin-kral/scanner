import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdConsentService {
  static final ValueNotifier<int> consentChanges =
  ValueNotifier<int>(0);

  static Future<bool> initialize() async {



    final completer = Completer<void>();

    ConsentInformation.instance.requestConsentInfoUpdate(
      ConsentRequestParameters(),
          () async {
        ConsentForm.loadAndShowConsentFormIfRequired(
              (FormError? error) {
            if (error != null) {
              debugPrint('Consent form error: ${error.message}');
            }

            if (!completer.isCompleted) {
              completer.complete();
            }
          },
        );
      },
          (FormError error) {
        debugPrint('Consent update error: ${error.message}');

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

    if (canRequestAds) {
      await MobileAds.instance.initialize();
    }

    return canRequestAds;
  }

  static Future<void> showPrivacyOptions() async {
    await ConsentForm.showPrivacyOptionsForm(
          (FormError? error) {
        if (error != null) {
          debugPrint('Privacy options error: ${error.message}');
        } else {
          consentChanges.value++;
        }
      },
    );
  }
}