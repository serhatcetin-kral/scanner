import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../services/ad_consent_service.dart';
class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();

    AdConsentService.consentChanges.addListener(
      _onConsentChanged,
    );

    _checkConsentAndLoadBanner();
  }
  Future<void> _onConsentChanged() async {
    final oldBanner = _bannerAd;

    setState(() {
      _bannerAd = null;
      _isLoaded = false;
    });

    await oldBanner?.dispose();

    if (!mounted) return;

    await _checkConsentAndLoadBanner();
  }

  Future<void> _checkConsentAndLoadBanner() async {
    if (!AdConsentService.privacyFlowCompleted) {
      return;
    }
    if (!Platform.isIOS && !Platform.isAndroid) {
      return;
    }

    // Check whether Google UMP allows ad requests.
    final canRequestAds =
    await ConsentInformation.instance.canRequestAds();

    if (!mounted || !canRequestAds) {
      return;
    }

    _loadBanner();
  }

  void _loadBanner() {
    // Official Google test banner IDs.
    final adUnitId = Platform.isAndroid
        ? 'ca-app-pub-3940256099942544/6300978111'
        : 'ca-app-pub-3940256099942544/2934735716';

    final banner = BannerAd(
      adUnitId: adUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }

          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('Banner ad failed: $error');
          ad.dispose();

          if (mounted) {
            setState(() {
              _bannerAd = null;
              _isLoaded = false;
            });
          }
        },
      ),
    );

    _bannerAd = banner;
    banner.load();
  }

  @override
  void dispose() {
    AdConsentService.consentChanges.removeListener(
      _onConsentChanged,
    );

    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded || _bannerAd == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: _bannerAd!.size.height.toDouble(),
      child: Center(
        child: SizedBox(
          width: _bannerAd!.size.width.toDouble(),
          height: _bannerAd!.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd!),
        ),
      ),
    );
  }
}