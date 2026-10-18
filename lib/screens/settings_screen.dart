import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:share_plus/share_plus.dart';
import 'package:upgrader/upgrader.dart';

import '../l10n/app_localizations.dart';
import '../services/app_prompt_service.dart';
import 'how_to_use_screen.dart';
import '../widgets/banner_ad_widget.dart';
import '../services/ad_consent_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../models/app_language.dart';
class SettingsScreen extends StatelessWidget {
  final Locale currentLocale;
  final Future<void> Function(Locale locale)
  onLanguageChanged;

  const SettingsScreen({
    super.key,
    required this.currentLocale,
    required this.onLanguageChanged,
  });

  // ============================================================
  // SHARE APP
  // ============================================================

  Future<void> _shareApp() async {
    await SharePlus.instance.share(
      ShareParams(
        text:
        'Check out Document Scanner — '
            'scan, organize, and export documents easily.',
      ),
    );
  }

  // ============================================================
  // RATE APP
  // ============================================================

  Future<void> _rateApp() async {
    final inAppReview =
        InAppReview.instance;

    final available =
    await inAppReview.isAvailable();

    if (available) {
      await inAppReview.requestReview();

      await AppPromptService.markAsRated();
    } else {
      await inAppReview.openStoreListing();
    }
  }

  // ============================================================
  // CHECK FOR UPDATES
  // ============================================================

  Future<void> _checkForUpdates(
      BuildContext context,
      ) async {
    final upgrader = Upgrader();

    try {
      await upgrader.initialize();

      if (!context.mounted) {
        return;
      }

      final shouldDisplay =
      upgrader.shouldDisplayUpgrade();

      if (shouldDisplay) {
        await showDialog<void>(
          context: context,
          builder: (dialogContext) {
            return UpgradeAlert(
              upgrader: upgrader,
              showIgnore: false,
              showLater: true,
              showReleaseNotes: true,
              child:
              const SizedBox.shrink(),
            );
          },
        );

        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'You already have the latest version.',
          ),
        ),
      );
    } catch (e) {
      if (!context.mounted) {
        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'Unable to check for updates right now.',
          ),
        ),
      );
    }
  }

  // ============================================================
  // HOW TO USE
  // ============================================================

  void _openHowToUse(
      BuildContext context,
      ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
        const HowToUseScreen(),
      ),
    );
  }

  Future<void> _showLanguageDialog(
      BuildContext context,
      ) async {
    final selectedLanguage =
    await showDialog<AppLanguage>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
            AppLocalizations.of(dialogContext)!.selectLanguage,
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: AppLanguage.all.length,
              itemBuilder: (context, index) {
                final language = AppLanguage.all[index];

                final isSelected =
                    AppLanguage.codeFromLocale(currentLocale) ==
                        language.code;

                return ListTile(
                  leading: Text(
                    language.flag,
                    style: const TextStyle(fontSize: 26),
                  ),
                  title: Text(language.name),
                  trailing: isSelected
                      ? const Icon(Icons.check_circle)
                      : null,
                  onTap: () {
                    Navigator.pop(dialogContext, language);
                  },
                );
              },
            ),
          ),
        );
      },
    );

    if (selectedLanguage != null) {
      await onLanguageChanged(selectedLanguage.locale);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n =
    AppLocalizations.of(context)!;

    final colorScheme =
        Theme.of(context).colorScheme;

    return Scaffold(
      // Google AdMob banner at bottom of Settings
      bottomNavigationBar: const SafeArea(
        top: false,
        child: BannerAdWidget(),
      ),

      appBar: AppBar(
        title: Text(
          l10n.settings,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding:
        const EdgeInsets.fromLTRB(
          20,
          16,
          20,
          32,
        ),
        children: [
          // ====================================================
          // LANGUAGE
          // ====================================================

          _SectionTitle(
            title: l10n.language,
          ),

          const SizedBox(height: 10),

          Card(
            clipBehavior:
            Clip.antiAlias,
            child:
            Card(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                leading: _SettingsIcon(
                  icon: Icons.language,
                  colorScheme: colorScheme,
                ),
                title: Text(l10n.language),
                subtitle: Text(
                  AppLanguage.all
                      .where(
                        (language) =>
                    language.code ==
                        AppLanguage.codeFromLocale(currentLocale),
                  )
                      .map((language) => language.name)
                      .firstOrNull ??
                      currentLocale.languageCode,
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _showLanguageDialog(context),
              ),
            ),

          ),

          const SizedBox(height: 28),

          // ====================================================
          // HELP
          // ====================================================

          _SectionTitle(
            title: l10n.help,
          ),

          const SizedBox(height: 10),

          Card(
            clipBehavior:
            Clip.antiAlias,
            child: ListTile(
              leading: _SettingsIcon(
                icon:
                Icons.help_outline,
                colorScheme:
                colorScheme,
              ),
              title: Text(
                l10n.howToUse,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                l10n.howToUseSubtitle,
              ),
              trailing: const Icon(
                Icons.chevron_right,
              ),
              onTap: () {
                _openHowToUse(
                  context,
                );
              },
            ),
          ),

          const SizedBox(height: 28),

          // ====================================================
          // APP
          // ====================================================

          const _SectionTitle(
            title: 'App',
          ),

          const SizedBox(height: 10),

          Card(
            clipBehavior:
            Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: _SettingsIcon(
                    icon:
                    Icons.share_outlined,
                    colorScheme:
                    colorScheme,
                  ),
                  title: Text(
                    l10n.shareApp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: const Text(
                    'Share Document Scanner with others',
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: _shareApp,
                ),

                const Divider(
                  height: 1,
                  indent: 72,
                ),

                ListTile(
                  leading: _SettingsIcon(
                    icon:
                    Icons.star_outline,
                    colorScheme:
                    colorScheme,
                  ),
                  title: Text(
                    l10n.rateApp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: const Text(
                    'Rate Document Scanner',
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: _rateApp,
                ),

                const Divider(
                  height: 1,
                  indent: 72,
                ),

                ListTile(
                  leading: _SettingsIcon(
                    icon: Icons
                        .system_update_outlined,
                    colorScheme:
                    colorScheme,
                  ),
                  title: Text(
                    l10n.checkForUpdates,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: const Text(
                    'Check if a new version is available',
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    _checkForUpdates(
                      context,
                    );
                  },
                ),
              ],
            ),
          ),
          FutureBuilder<PrivacyOptionsRequirementStatus>(
            future: ConsentInformation.instance
                .getPrivacyOptionsRequirementStatus(),
            builder: (context, snapshot) {
              if (!snapshot.hasData ||
                  snapshot.data != PrivacyOptionsRequirementStatus.required) {
                return const SizedBox.shrink();
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 28),
                  const _SectionTitle(title: 'Privacy'),
                  const SizedBox(height: 10),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: ListTile(
                      leading: _SettingsIcon(
                        icon: Icons.privacy_tip_outlined,
                        colorScheme: colorScheme,
                      ),
                      title: const Text(
                        'Privacy Options',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text(
                        'Manage your advertising privacy choices',
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () async {
                        await AdConsentService.showPrivacyOptions();
                      },
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 24),

          // ====================================================
          // SMALL FOOTER
          // ====================================================

          Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Icon(
                Icons
                    .document_scanner_outlined,
                size: 18,
                color: colorScheme
                    .onSurfaceVariant,
              ),
              const SizedBox(width: 8),
              Text(
                'Document Scanner',
                style: TextStyle(
                  color: colorScheme
                      .onSurfaceVariant,
                  fontWeight:
                  FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SECTION TITLE
// ============================================================

class _SectionTitle
    extends StatelessWidget {
  final String title;

  const _SectionTitle({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Theme.of(context)
            .colorScheme
            .primary,
      ),
    );
  }
}

// ============================================================
// SETTINGS ICON
// ============================================================

class _SettingsIcon
    extends StatelessWidget {
  final IconData icon;
  final ColorScheme colorScheme;

  const _SettingsIcon({
    required this.icon,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color:
        colorScheme.primaryContainer,
        borderRadius:
        BorderRadius.circular(12),
      ),
      child: Icon(
        icon,
        size: 22,
        color: colorScheme.primary,
      ),
    );
  }
}