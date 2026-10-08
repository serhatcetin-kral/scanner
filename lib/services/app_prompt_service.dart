import 'package:shared_preferences/shared_preferences.dart';

class AppPromptService {
  static const String _launchCountKey =
      'app_launch_count';

  // ============================================================
  // RATE APP
  // ============================================================

  static const String _lastRatePromptLaunchKey =
      'last_rate_prompt_launch';

  static const String _ratedKey =
      'user_rated_app';

  // ============================================================
  // SHARE APP
  // ============================================================

  static const String _sharedKey =
      'user_shared_app';

  // ============================================================
  // REGISTER APP LAUNCH
  // ============================================================

  static Future<int> registerLaunch() async {
    final prefs =
    await SharedPreferences.getInstance();

    final currentCount =
        prefs.getInt(_launchCountKey) ?? 0;

    final newCount = currentCount + 1;

    await prefs.setInt(
      _launchCountKey,
      newCount,
    );

    return newCount;
  }

  // ============================================================
  // RATE PROMPT
  // ============================================================

  static Future<bool>
  shouldShowRatePrompt() async {
    final prefs =
    await SharedPreferences.getInstance();

    final launchCount =
        prefs.getInt(_launchCountKey) ?? 0;

    final lastPromptLaunch =
        prefs.getInt(
          _lastRatePromptLaunchKey,
        ) ??
            0;

    final alreadyRated =
        prefs.getBool(_ratedKey) ?? false;

    if (alreadyRated) {
      return false;
    }

    // First rating prompt after 5 launches.
    if (launchCount < 5) {
      return false;
    }

    if (lastPromptLaunch == 0) {
      return true;
    }

    // If user chooses Later,
    // wait another 10 launches.
    return launchCount - lastPromptLaunch >= 10;
  }

  static Future<void>
  markRatePromptShown() async {
    final prefs =
    await SharedPreferences.getInstance();

    final launchCount =
        prefs.getInt(_launchCountKey) ?? 0;

    await prefs.setInt(
      _lastRatePromptLaunchKey,
      launchCount,
    );
  }

  static Future<void> markAsRated() async {
    final prefs =
    await SharedPreferences.getInstance();

    await prefs.setBool(
      _ratedKey,
      true,
    );
  }

  // ============================================================
  // SHARE PROMPT
  // ============================================================

  static Future<bool> shouldShowSharePrompt() async {
    final prefs =
    await SharedPreferences.getInstance();

    final launchCount =
        prefs.getInt(_launchCountKey) ?? 0;

    final alreadyShared =
        prefs.getBool(_sharedKey) ?? false;

    final lastSharePromptLaunch =
        prefs.getInt('last_share_prompt_launch') ?? 0;

    if (alreadyShared) {
      return false;
    }

    // Maximum three Share prompt opportunities.
    if (lastSharePromptLaunch >= 15) {
      return false;
    }

    // Eligible starting at launch 5,
    // then 10 and 15.
    if (lastSharePromptLaunch < 5) {
      return launchCount >= 5;
    }

    if (lastSharePromptLaunch < 10) {
      return launchCount >= 10;
    }

    return launchCount >= 15;
  }

  static Future<void> markSharePromptShown() async {
    final prefs =
    await SharedPreferences.getInstance();



    final lastSharePromptLaunch =
        prefs.getInt('last_share_prompt_launch') ?? 0;

    final int milestone;

    if (lastSharePromptLaunch < 5) {
      milestone = 5;
    } else if (lastSharePromptLaunch < 10) {
      milestone = 10;
    } else {
      milestone = 15;
    }

    await prefs.setInt(
      'last_share_prompt_launch',
      milestone,
    );
  }

  static Future<void> markAsShared() async {
    final prefs =
    await SharedPreferences.getInstance();

    await prefs.setBool(
      _sharedKey,
      true,
    );
  }
}