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

  static Future<bool>
  shouldShowSharePrompt() async {
    final prefs =
    await SharedPreferences.getInstance();

    final launchCount =
        prefs.getInt(_launchCountKey) ?? 0;

    final alreadyShared =
        prefs.getBool(_sharedKey) ?? false;

    // User already chose Share App.
    // Never automatically ask again.
    if (alreadyShared) {
      return false;
    }

    // Only show automatically on
    // launch 5, 10 or 15.
    return launchCount == 5 ||
        launchCount == 10 ||
        launchCount == 15;
  }

  static Future<void>
  markSharePromptShown() async {
    // Nothing needs to be stored here.
    //
    // Share prompts are controlled by
    // launch numbers 5, 10 and 15.
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