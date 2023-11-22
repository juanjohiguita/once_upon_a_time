import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    'pp9usjw3': {
      'en': 'Once upon a time...',
      'es': '',
    },
    '1hykl5m1': {
      'en': 'Sign In',
      'es': '',
    },
    '2813w2lp': {
      'en': 'Welcome Back',
      'es': '',
    },
    'gwzfh4p7': {
      'en': 'Fill out the information below in order to access your account.',
      'es': '',
    },
    '7iox1xbj': {
      'en': 'Email',
      'es': '',
    },
    'dt85ahnp': {
      'en': 'Password',
      'es': '',
    },
    'ap4uhgqp': {
      'en': 'Go',
      'es': '',
    },
    'gy0y15up': {
      'en': 'Or sign in with',
      'es': '',
    },
    'jb7bi2d9': {
      'en': 'Continue with Google',
      'es': '',
    },
    '71tov4km': {
      'en': 'Sign Up',
      'es': '',
    },
    'u7x8vwah': {
      'en': 'Create Account',
      'es': '',
    },
    'tsc0j3a4': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
    },
    'cuv9i8oi': {
      'en': 'Name',
      'es': '',
    },
    'lic8vvb6': {
      'en': 'Email',
      'es': '',
    },
    'pzyen40s': {
      'en': 'Password',
      'es': '',
    },
    't4m57uss': {
      'en': 'Confirm Password',
      'es': '',
    },
    'l21lu0ei': {
      'en': 'Sign Up',
      'es': '',
    },
    'ext4cpqi': {
      'en': 'Home',
      'es': '',
    },
  },
  // FormStory
  {
    '68bo8a51': {
      'en': 'Create a story for children',
      'es': '',
    },
    'znq17oa7': {
      'en': 'Child\'s Name (main character)',
      'es': '',
    },
    'l9jswgdh': {
      'en': 'Bruno',
      'es': '',
    },
    'jhy3hj9p': {
      'en': 'Theme:',
      'es': '',
    },
    'c8re3cht': {
      'en': 'Love',
      'es': '',
    },
    '7zydwjvc': {
      'en': 'Grit',
      'es': '',
    },
    'bodsc7qu': {
      'en': 'Learning to learn',
      'es': '',
    },
    '06rl2c7v': {
      'en': 'Modern gender roles',
      'es': '',
    },
    'ojywyf38': {
      'en': 'Growth mindset',
      'es': '',
    },
    'nupdpizk': {
      'en': 'Love',
      'es': '',
    },
    'ad6kuh8i': {
      'en': 'Power of diversity',
      'es': '',
    },
    '942kkyou': {
      'en': 'Please select the theme...',
      'es': '',
    },
    'nw1g3kyy': {
      'en': 'Search for an item...',
      'es': '',
    },
    'jeaixob5': {
      'en': 'Reading duration:',
      'es': '',
    },
    'mkamv8j7': {
      'en': '5 minutes',
      'es': '',
    },
    'xlbexov9': {
      'en': '5 minutes',
      'es': '',
    },
    'fzbgzber': {
      'en': '10 minutes',
      'es': '',
    },
    'qpjdurdf': {
      'en': 'Please select...',
      'es': '',
    },
    'zcikzpzl': {
      'en': 'Search for an item...',
      'es': '',
    },
    'osp6ezxf': {
      'en': 'Child stage:',
      'es': '',
    },
    '08mkq0zp': {
      'en': 'New born',
      'es': '',
    },
    'fnwmewhq': {
      'en': 'New born',
      'es': '',
    },
    '31njkxa1': {
      'en': '6 months',
      'es': '',
    },
    'avom0wg4': {
      'en': '8 months',
      'es': '',
    },
    'yxdaim67': {
      'en': '1 year',
      'es': '',
    },
    '70wl7rvf': {
      'en': '2 years',
      'es': '',
    },
    'ysaa3sqh': {
      'en': '3 years',
      'es': '',
    },
    '90xh61bu': {
      'en': '4 years',
      'es': '',
    },
    'dyl0fxm4': {
      'en': '5 years',
      'es': '',
    },
    '11k27xp4': {
      'en': '6 years',
      'es': '',
    },
    'q11ckhsu': {
      'en': '7 years',
      'es': '',
    },
    'xqaavc7e': {
      'en': 'Please select...',
      'es': '',
    },
    '7kj47456': {
      'en': 'Search for an item...',
      'es': '',
    },
    'rlsaaf2y': {
      'en': 'Environment of the story:',
      'es': '',
    },
    '5k8z0vaw': {
      'en': 'Jungle',
      'es': '',
    },
    'mkd2b540': {
      'en': 'Jungle',
      'es': '',
    },
    'sbti8y4f': {
      'en': 'Space',
      'es': '',
    },
    '0hte6npc': {
      'en': 'Under the sea',
      'es': '',
    },
    'go85dt2s': {
      'en': 'Home',
      'es': '',
    },
    '4lsq5owq': {
      'en': 'Family',
      'es': '',
    },
    'q1pancyg': {
      'en': 'Beach',
      'es': '',
    },
    'e1g2dgyu': {
      'en': 'Mountain',
      'es': '',
    },
    'joa5hnpg': {
      'en': 'Please select...',
      'es': '',
    },
    'a9c3hkvx': {
      'en': 'Search for an item...',
      'es': '',
    },
    'c1zhwe8i': {
      'en': 'Create',
      'es': '',
    },
    '7lfl860z': {
      'en': 'Home',
      'es': '',
    },
  },
  // SubscriptionPayment
  {
    'h9zt0aea': {
      'en': 'Subscription / Payment',
      'es': '',
    },
    'iq66xnj2': {
      'en': 'Your Subscription',
      'es': '',
    },
    '7dc03yu7': {
      'en': 'Monthly',
      'es': '',
    },
    'id6ncsjo': {
      'en': '\$10 USD/mo',
      'es': '',
    },
    'xnjtkhw2': {
      'en': 'Gain unlimited access to all the content we have to offer! ',
      'es': '',
    },
    '249k2swr': {
      'en': 'Other Offers',
      'es': '',
    },
    'wi3ps707': {
      'en': 'Annual (save \$20)',
      'es': '',
    },
    'czvbuiqk': {
      'en': '\$100 USD/yr',
      'es': '',
    },
    'ocoldhwl': {
      'en': 'Gain unlimited access to all the content we have to offer! ',
      'es': '',
    },
    'o0622dci': {
      'en': 'Free Limited Access',
      'es': '',
    },
    'tqdfs1ud': {
      'en': 'Continue with limited access at no cost. Create short poems',
      'es': '',
    },
    '1nflpmmq': {
      'en': 'Select Plan',
      'es': '',
    },
    'nhc9ce58': {
      'en': 'Home',
      'es': '',
    },
  },
  // Settings
  {
    '9ukm505p': {
      'en': 'Settings',
      'es': '',
    },
    'befzmxnz': {
      'en': 'Subscription / Payment',
      'es': '',
    },
    'nbpnpnai': {
      'en': 'Log Out',
      'es': '',
    },
    'ktvzbdq8': {
      'en': 'Home',
      'es': '',
    },
  },
  // Home
  {
    'cxzxnl48': {
      'en': 'Home',
      'es': '',
    },
    'unj6ophc': {
      'en': 'Once upon a time...',
      'es': '',
    },
    'mrpoz2c0': {
      'en': 'Create story',
      'es': '',
    },
    'ytbma4ub': {
      'en': 'Create poem',
      'es': '',
    },
    'd1i0fwsz': {
      'en': 'Home',
      'es': '',
    },
  },
  // FormPoem
  {
    'evv7hbhs': {
      'en': 'Create a poem for children',
      'es': '',
    },
    'gojxg73m': {
      'en': 'Child\'s Name (main character)',
      'es': '',
    },
    'ow72bwzw': {
      'en': 'Bruno',
      'es': '',
    },
    '1tz2r6wn': {
      'en': 'Theme:',
      'es': '',
    },
    'g6pztrgz': {
      'en': 'Love',
      'es': '',
    },
    'ute8q0rj': {
      'en': 'Grit',
      'es': '',
    },
    'utj68rhl': {
      'en': 'Learning to learn',
      'es': '',
    },
    'faxz7f4g': {
      'en': 'Modern gender roles',
      'es': '',
    },
    'ahdqvu0h': {
      'en': 'Growth mindset',
      'es': '',
    },
    'txgsrrb1': {
      'en': 'Love',
      'es': '',
    },
    '73l17hhi': {
      'en': 'Power of diversity',
      'es': '',
    },
    '50hnu01d': {
      'en': 'Please select the theme...',
      'es': '',
    },
    'kd4lmrgg': {
      'en': 'Search for an item...',
      'es': '',
    },
    'un7bmkj1': {
      'en': 'Child stage:',
      'es': '',
    },
    'o6h3xft4': {
      'en': 'New born',
      'es': '',
    },
    'xemb68k1': {
      'en': 'New born',
      'es': '',
    },
    'vchc22y3': {
      'en': '6 months',
      'es': '',
    },
    'hkm72oyz': {
      'en': '8 months',
      'es': '',
    },
    '3gm7eewd': {
      'en': '1 year',
      'es': '',
    },
    'dwx8dnqw': {
      'en': '2 years',
      'es': '',
    },
    'fvy1x1i5': {
      'en': '3 years',
      'es': '',
    },
    'ac0dokys': {
      'en': '4 years',
      'es': '',
    },
    'drkdtsdd': {
      'en': '5 years',
      'es': '',
    },
    'kmsyr3tz': {
      'en': '6 years',
      'es': '',
    },
    'j8idhgpw': {
      'en': '7 years',
      'es': '',
    },
    'wfqkbutx': {
      'en': 'Please select...',
      'es': '',
    },
    '90x0o5o9': {
      'en': 'Search for an item...',
      'es': '',
    },
    '30snbmgo': {
      'en': 'Environment of the story:',
      'es': '',
    },
    '4wpkp5af': {
      'en': 'Jungle',
      'es': '',
    },
    '91vmmy4b': {
      'en': 'Jungle',
      'es': '',
    },
    'ut5x6jm6': {
      'en': 'Space',
      'es': '',
    },
    'utc2u2wg': {
      'en': 'Under the sea',
      'es': '',
    },
    '0g6rhx8u': {
      'en': 'Home',
      'es': '',
    },
    'mylkonyx': {
      'en': 'Family',
      'es': '',
    },
    'k7740vf1': {
      'en': 'Beach',
      'es': '',
    },
    'nytd0ei1': {
      'en': 'Mountain',
      'es': '',
    },
    'axeid3ix': {
      'en': 'Please select...',
      'es': '',
    },
    'wqq42p0w': {
      'en': 'Search for an item...',
      'es': '',
    },
    'a1morq4y': {
      'en': 'Create',
      'es': '',
    },
    'hczesvyx': {
      'en': 'Home',
      'es': '',
    },
  },
  // ListUsers
  {
    '0jakr46w': {
      'en': 'Manage your users below.',
      'es': '',
    },
    'gudy4q2x': {
      'en': 'Create User',
      'es': '',
    },
    'n3bym9ro': {
      'en': 'Name',
      'es': '',
    },
    'sfgdxze6': {
      'en': 'Email',
      'es': '',
    },
    'aissghby': {
      'en': 'Name',
      'es': '',
    },
    'rq1cn253': {
      'en': 'Password',
      'es': '',
    },
    'bdhimmod': {
      'en': 'Name',
      'es': '',
    },
    '6vzsz918': {
      'en': 'Comfirm password',
      'es': '',
    },
    '5oie8aus': {
      'en': 'Create',
      'es': '',
    },
    'ucsjflrg': {
      'en': 'Users',
      'es': '',
    },
    'synpfqx7': {
      'en': 'Home',
      'es': '',
    },
  },
  // CreateUser
  {
    '96eiv85s': {
      'en': 'Create User',
      'es': '',
    },
    'rokriicy': {
      'en': 'Name',
      'es': '',
    },
    'zfjba3lj': {
      'en': 'Email',
      'es': '',
    },
    'mtryiprt': {
      'en': 'Name',
      'es': '',
    },
    'a3yb0ul0': {
      'en': 'Password',
      'es': '',
    },
    'i64hf1by': {
      'en': 'Name',
      'es': '',
    },
    '98dvfh6b': {
      'en': 'Comfirm password',
      'es': '',
    },
    'qzudjtsx': {
      'en': 'Create',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'egtczb9w': {
      'en': '',
      'es': '',
    },
    'v5nc6rop': {
      'en': '',
      'es': '',
    },
    '1fi2ai71': {
      'en': '',
      'es': '',
    },
    'gftyei63': {
      'en': '',
      'es': '',
    },
    '3z1t921e': {
      'en': '',
      'es': '',
    },
    'w6tcwyqu': {
      'en': '',
      'es': '',
    },
    'avkgj0ov': {
      'en': '',
      'es': '',
    },
    'q35cjn29': {
      'en': '',
      'es': '',
    },
    '2tril6fb': {
      'en': '',
      'es': '',
    },
    '2neoj5df': {
      'en': '',
      'es': '',
    },
    'l7ewdk0u': {
      'en': '',
      'es': '',
    },
    '20bbezfe': {
      'en': '',
      'es': '',
    },
    'zcqtsf1h': {
      'en': '',
      'es': '',
    },
    '4tx6petc': {
      'en': '',
      'es': '',
    },
    'u8k1aj6i': {
      'en': '',
      'es': '',
    },
    'jvstab2e': {
      'en': '',
      'es': '',
    },
    'mlhcb38h': {
      'en': '',
      'es': '',
    },
    'ej83hc4l': {
      'en': '',
      'es': '',
    },
    'st80uxhc': {
      'en': '',
      'es': '',
    },
    'hsu241w0': {
      'en': '',
      'es': '',
    },
    '3n56edaa': {
      'en': '',
      'es': '',
    },
    'crx62fc4': {
      'en': '',
      'es': '',
    },
    '3uzujm6m': {
      'en': '',
      'es': '',
    },
    'jsb4yo3h': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
