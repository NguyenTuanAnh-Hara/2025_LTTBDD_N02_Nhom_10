import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get navAbout;

  /// No description provided for @homeWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get homeWelcome;

  /// No description provided for @homeSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search recipes...'**
  String get homeSearchHint;

  /// No description provided for @homeCategoryFood.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get homeCategoryFood;

  /// No description provided for @homeCategoryDrink.
  ///
  /// In en, this message translates to:
  /// **'Drink'**
  String get homeCategoryDrink;

  /// No description provided for @homeMinutes.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get homeMinutes;

  /// No description provided for @detailIngredients.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get detailIngredients;

  /// No description provided for @detailSteps.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get detailSteps;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutTitle;

  /// No description provided for @aboutCourse.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get aboutCourse;

  /// No description provided for @aboutCourseName.
  ///
  /// In en, this message translates to:
  /// **'Mobile Programming'**
  String get aboutCourseName;

  /// No description provided for @aboutProject.
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get aboutProject;

  /// No description provided for @aboutProjectName.
  ///
  /// In en, this message translates to:
  /// **'Recipe App'**
  String get aboutProjectName;

  /// No description provided for @aboutTeacher.
  ///
  /// In en, this message translates to:
  /// **'Instructor'**
  String get aboutTeacher;

  /// No description provided for @aboutTeacherName.
  ///
  /// In en, this message translates to:
  /// **'Que Nguyen Xuan'**
  String get aboutTeacherName;

  /// No description provided for @aboutStudent.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get aboutStudent;

  /// No description provided for @aboutStudentName.
  ///
  /// In en, this message translates to:
  /// **'Nguyen Tuan Anh - 23010575'**
  String get aboutStudentName;

  /// No description provided for @aboutLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get aboutLanguage;

  /// No description provided for @aboutLangVI.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese (VI)'**
  String get aboutLangVI;

  /// No description provided for @aboutLangEN.
  ///
  /// In en, this message translates to:
  /// **'English (EN)'**
  String get aboutLangEN;

  /// No description provided for @r1_name.
  ///
  /// In en, this message translates to:
  /// **'Spaghetti Carbonara'**
  String get r1_name;

  /// No description provided for @r1_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Spaghetti (200g)'**
  String get r1_ing_1;

  /// No description provided for @r1_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Eggs (2)'**
  String get r1_ing_2;

  /// No description provided for @r1_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Pecorino cheese (50g)'**
  String get r1_ing_3;

  /// No description provided for @r1_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Smoked bacon (100g)'**
  String get r1_ing_4;

  /// No description provided for @r1_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Black pepper'**
  String get r1_ing_5;

  /// No description provided for @r1_step_1.
  ///
  /// In en, this message translates to:
  /// **'Boil spaghetti for 8-10 minutes.'**
  String get r1_step_1;

  /// No description provided for @r1_step_2.
  ///
  /// In en, this message translates to:
  /// **'Dice bacon, fry until crispy.'**
  String get r1_step_2;

  /// No description provided for @r1_step_3.
  ///
  /// In en, this message translates to:
  /// **'Whisk eggs with grated cheese and pepper.'**
  String get r1_step_3;

  /// No description provided for @r1_step_4.
  ///
  /// In en, this message translates to:
  /// **'Add cooked pasta (reserve some pasta water) to the pan with bacon. Turn off heat.'**
  String get r1_step_4;

  /// No description provided for @r1_step_5.
  ///
  /// In en, this message translates to:
  /// **'Pour in the egg and cheese mixture, stirring quickly. The residual heat will cook the eggs.'**
  String get r1_step_5;

  /// No description provided for @r1_step_6.
  ///
  /// In en, this message translates to:
  /// **'Add a little pasta water if it\'s too dry. Add more pepper and serve.'**
  String get r1_step_6;

  /// No description provided for @r2_name.
  ///
  /// In en, this message translates to:
  /// **'Hanoi Pho Bo (Beef Noodle Soup)'**
  String get r2_name;

  /// No description provided for @r2_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Pho noodles (500g)'**
  String get r2_ing_1;

  /// No description provided for @r2_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Beef (sirloin, flank) (300g)'**
  String get r2_ing_2;

  /// No description provided for @r2_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Beef bones (1kg)'**
  String get r2_ing_3;

  /// No description provided for @r2_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Onion (1)'**
  String get r2_ing_4;

  /// No description provided for @r2_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Ginger (1 branch)'**
  String get r2_ing_5;

  /// No description provided for @r2_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Cardamom, star anise, cinnamon'**
  String get r2_ing_6;

  /// No description provided for @r2_ing_7.
  ///
  /// In en, this message translates to:
  /// **'Spring onions, cilantro, lime, chili'**
  String get r2_ing_7;

  /// No description provided for @r2_step_1.
  ///
  /// In en, this message translates to:
  /// **'Clean bones, blanch in boiling water. Simmer bones with grilled ginger, onion, and spices for 4-6 hours.'**
  String get r2_step_1;

  /// No description provided for @r2_step_2.
  ///
  /// In en, this message translates to:
  /// **'Filter for a clear broth.'**
  String get r2_step_2;

  /// No description provided for @r2_step_3.
  ///
  /// In en, this message translates to:
  /// **'Slice the beef thinly.'**
  String get r2_step_3;

  /// No description provided for @r2_step_4.
  ///
  /// In en, this message translates to:
  /// **'Blanch pho noodles in boiling water.'**
  String get r2_step_4;

  /// No description provided for @r2_step_5.
  ///
  /// In en, this message translates to:
  /// **'Place noodles and beef in a bowl, pour boiling broth over.'**
  String get r2_step_5;

  /// No description provided for @r2_step_6.
  ///
  /// In en, this message translates to:
  /// **'Add spring onions, cilantro, and serve with lime and chili.'**
  String get r2_step_6;

  /// No description provided for @r3_name.
  ///
  /// In en, this message translates to:
  /// **'Garlic Bread'**
  String get r3_name;

  /// No description provided for @r3_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Baguette (1 loaf)'**
  String get r3_ing_1;

  /// No description provided for @r3_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Unsalted butter (100g)'**
  String get r3_ing_2;

  /// No description provided for @r3_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Garlic (3 cloves)'**
  String get r3_ing_3;

  /// No description provided for @r3_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Parsley (1 handful)'**
  String get r3_ing_4;

  /// No description provided for @r3_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Salt (1/4 tsp)'**
  String get r3_ing_5;

  /// No description provided for @r3_step_1.
  ///
  /// In en, this message translates to:
  /// **'Slice the baguette diagonally 1.5cm thick.'**
  String get r3_step_1;

  /// No description provided for @r3_step_2.
  ///
  /// In en, this message translates to:
  /// **'Mince garlic and parsley.'**
  String get r3_step_2;

  /// No description provided for @r3_step_3.
  ///
  /// In en, this message translates to:
  /// **'Soften butter at room temperature. Mix butter with garlic, parsley, and salt.'**
  String get r3_step_3;

  /// No description provided for @r3_step_4.
  ///
  /// In en, this message translates to:
  /// **'Spread the garlic butter mixture evenly on both sides of the bread.'**
  String get r3_step_4;

  /// No description provided for @r3_step_5.
  ///
  /// In en, this message translates to:
  /// **'Bake at 180°C (350°F) for 10-12 minutes until golden brown.'**
  String get r3_step_5;

  /// No description provided for @r4_name.
  ///
  /// In en, this message translates to:
  /// **'Bun Cha Hanoi (Grilled Pork with Noodles)'**
  String get r4_name;

  /// No description provided for @r4_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Vermicelli noodles (1kg)'**
  String get r4_ing_1;

  /// No description provided for @r4_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Pork belly (500g)'**
  String get r4_ing_2;

  /// No description provided for @r4_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Pork shoulder (500g)'**
  String get r4_ing_3;

  /// No description provided for @r4_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Kohlrabi, carrot, green papaya'**
  String get r4_ing_4;

  /// No description provided for @r4_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Fish sauce, sugar, garlic, chili'**
  String get r4_ing_5;

  /// No description provided for @r4_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Fresh herbs (lettuce, perilla, etc.)'**
  String get r4_ing_6;

  /// No description provided for @r4_step_1.
  ///
  /// In en, this message translates to:
  /// **'Slice pork belly. Mince pork shoulder for patties. Marinate both with fish sauce, sugar, shallots.'**
  String get r4_step_1;

  /// No description provided for @r4_step_2.
  ///
  /// In en, this message translates to:
  /// **'Make dipping sauce: fish sauce, sugar, vinegar (or lime), garlic, chili to taste.'**
  String get r4_step_2;

  /// No description provided for @r4_step_3.
  ///
  /// In en, this message translates to:
  /// **'Make pickles: thinly slice kohlrabi, carrot, papaya, soak in sugar and vinegar.'**
  String get r4_step_3;

  /// No description provided for @r4_step_4.
  ///
  /// In en, this message translates to:
  /// **'Grill pork belly and patties over charcoal until fragrant and golden.'**
  String get r4_step_4;

  /// No description provided for @r4_step_5.
  ///
  /// In en, this message translates to:
  /// **'Put grilled pork into the warm dipping sauce bowl, add pickles.'**
  String get r4_step_5;

  /// No description provided for @r4_step_6.
  ///
  /// In en, this message translates to:
  /// **'Serve with vermicelli and fresh herbs.'**
  String get r4_step_6;

  /// No description provided for @r5_name.
  ///
  /// In en, this message translates to:
  /// **'Fried Chicken Wings'**
  String get r5_name;

  /// No description provided for @r5_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Chicken wings (1kg)'**
  String get r5_ing_1;

  /// No description provided for @r5_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Crispy fry flour (150g)'**
  String get r5_ing_2;

  /// No description provided for @r5_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Egg (1)'**
  String get r5_ing_3;

  /// No description provided for @r5_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Unsweetened milk (50ml)'**
  String get r5_ing_4;

  /// No description provided for @r5_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Spices: garlic powder, onion powder, paprika, salt, pepper'**
  String get r5_ing_5;

  /// No description provided for @r5_step_1.
  ///
  /// In en, this message translates to:
  /// **'Clean chicken wings, pat dry. Marinate with salt, pepper, garlic, onion, and paprika powder for 30 minutes.'**
  String get r5_step_1;

  /// No description provided for @r5_step_2.
  ///
  /// In en, this message translates to:
  /// **'Make wet batter: mix egg and milk.'**
  String get r5_step_2;

  /// No description provided for @r5_step_3.
  ///
  /// In en, this message translates to:
  /// **'Make dry batter: mix crispy flour with a little salt and paprika.'**
  String get r5_step_3;

  /// No description provided for @r5_step_4.
  ///
  /// In en, this message translates to:
  /// **'Dip chicken wings in wet batter, then dredge thoroughly in dry batter.'**
  String get r5_step_4;

  /// No description provided for @r5_step_5.
  ///
  /// In en, this message translates to:
  /// **'Deep fry in oil at medium heat (170°C) for 10-12 minutes until golden and cooked through.'**
  String get r5_step_5;

  /// No description provided for @r5_step_6.
  ///
  /// In en, this message translates to:
  /// **'Drain on a rack and serve.'**
  String get r5_step_6;

  /// No description provided for @r7_name.
  ///
  /// In en, this message translates to:
  /// **'Yangzhou Fried Rice'**
  String get r7_name;

  /// No description provided for @r7_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Cooked rice (cold) (2 bowls)'**
  String get r7_ing_1;

  /// No description provided for @r7_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Eggs (2)'**
  String get r7_ing_2;

  /// No description provided for @r7_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Chinese sausage (1)'**
  String get r7_ing_3;

  /// No description provided for @r7_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese ham (100g)'**
  String get r7_ing_4;

  /// No description provided for @r7_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Peas, carrots, corn (100g)'**
  String get r7_ing_5;

  /// No description provided for @r7_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Shrimp (100g)'**
  String get r7_ing_6;

  /// No description provided for @r7_step_1.
  ///
  /// In en, this message translates to:
  /// **'Dice all ingredients (sausage, ham, carrots, shrimp). Parboil peas, corn, and carrots.'**
  String get r7_step_1;

  /// No description provided for @r7_step_2.
  ///
  /// In en, this message translates to:
  /// **'Sauté garlic, stir-fry shrimp and sausage until cooked, then add other ingredients and stir well.'**
  String get r7_step_2;

  /// No description provided for @r7_step_3.
  ///
  /// In en, this message translates to:
  /// **'Add cold rice to the wok, breaking it up. Add eggs, stirring quickly to coat the rice grains.'**
  String get r7_step_3;

  /// No description provided for @r7_step_4.
  ///
  /// In en, this message translates to:
  /// **'Season with soy sauce, seasoning powder, and add spring onions.'**
  String get r7_step_4;

  /// No description provided for @r7_step_5.
  ///
  /// In en, this message translates to:
  /// **'Stir-fry on high heat until the rice grains are firm and \'dancing\'.'**
  String get r7_step_5;

  /// No description provided for @r8_name.
  ///
  /// In en, this message translates to:
  /// **'Beefsteak'**
  String get r8_name;

  /// No description provided for @r8_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Beef tenderloin (200g)'**
  String get r8_ing_1;

  /// No description provided for @r8_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Potatoes (2)'**
  String get r8_ing_2;

  /// No description provided for @r8_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Egg (1)'**
  String get r8_ing_3;

  /// No description provided for @r8_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Unsalted butter, garlic'**
  String get r8_ing_4;

  /// No description provided for @r8_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Rosemary'**
  String get r8_ing_5;

  /// No description provided for @r8_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Salt, pepper'**
  String get r8_ing_6;

  /// No description provided for @r8_step_1.
  ///
  /// In en, this message translates to:
  /// **'Clean beef, pat dry. Season with salt, pepper, and olive oil.'**
  String get r8_step_1;

  /// No description provided for @r8_step_2.
  ///
  /// In en, this message translates to:
  /// **'Make french fries.'**
  String get r8_step_2;

  /// No description provided for @r8_step_3.
  ///
  /// In en, this message translates to:
  /// **'Heat a cast-iron skillet. Add butter, crushed garlic, and rosemary.'**
  String get r8_step_3;

  /// No description provided for @r8_step_4.
  ///
  /// In en, this message translates to:
  /// **'Sear the beef, 2-3 minutes per side (for medium-rare). Continuously baste with the garlic butter.'**
  String get r8_step_4;

  /// No description provided for @r8_step_5.
  ///
  /// In en, this message translates to:
  /// **'Make a sunny-side-up egg.'**
  String get r8_step_5;

  /// No description provided for @r8_step_6.
  ///
  /// In en, this message translates to:
  /// **'Serve the steak on a hot plate with fries and egg.'**
  String get r8_step_6;

  /// No description provided for @r9_name.
  ///
  /// In en, this message translates to:
  /// **'Pizza Margherita'**
  String get r9_name;

  /// No description provided for @r9_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Pizza base (1)'**
  String get r9_ing_1;

  /// No description provided for @r9_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Tomato sauce (50ml)'**
  String get r9_ing_2;

  /// No description provided for @r9_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Mozzarella cheese (100g)'**
  String get r9_ing_3;

  /// No description provided for @r9_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Cherry tomatoes (a few)'**
  String get r9_ing_4;

  /// No description provided for @r9_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Fresh basil leaves'**
  String get r9_ing_5;

  /// No description provided for @r9_step_1.
  ///
  /// In en, this message translates to:
  /// **'Spread tomato sauce evenly on the pizza base.'**
  String get r9_step_1;

  /// No description provided for @r9_step_2.
  ///
  /// In en, this message translates to:
  /// **'Sprinkle shredded Mozzarella cheese.'**
  String get r9_step_2;

  /// No description provided for @r9_step_3.
  ///
  /// In en, this message translates to:
  /// **'Arrange halved cherry tomatoes and basil leaves on top.'**
  String get r9_step_3;

  /// No description provided for @r9_step_4.
  ///
  /// In en, this message translates to:
  /// **'Bake at 220°C (430°F) for 10-15 minutes, until the crust is crispy and cheese is golden.'**
  String get r9_step_4;

  /// No description provided for @r9_step_5.
  ///
  /// In en, this message translates to:
  /// **'Drizzle with olive oil before serving.'**
  String get r9_step_5;

  /// No description provided for @r10_name.
  ///
  /// In en, this message translates to:
  /// **'Fried Spring Rolls (Nem Ran)'**
  String get r10_name;

  /// No description provided for @r10_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Ground pork shoulder (300g)'**
  String get r10_ing_1;

  /// No description provided for @r10_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Shrimp (100g)'**
  String get r10_ing_2;

  /// No description provided for @r10_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Glass noodles, wood ear mushrooms, shiitake mushrooms'**
  String get r10_ing_3;

  /// No description provided for @r10_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Carrot, kohlrabi (or bean sprouts)'**
  String get r10_ing_4;

  /// No description provided for @r10_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Eggs (2)'**
  String get r10_ing_5;

  /// No description provided for @r10_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Rice paper wrappers'**
  String get r10_ing_6;

  /// No description provided for @r10_ing_7.
  ///
  /// In en, this message translates to:
  /// **'Dipping sauce'**
  String get r10_ing_7;

  /// No description provided for @r10_step_1.
  ///
  /// In en, this message translates to:
  /// **'Soak noodles, mushrooms until soft, then mince.'**
  String get r10_step_1;

  /// No description provided for @r10_step_2.
  ///
  /// In en, this message translates to:
  /// **'Shred carrot, kohlrabi. Mince shrimp.'**
  String get r10_step_2;

  /// No description provided for @r10_step_3.
  ///
  /// In en, this message translates to:
  /// **'Mix all ingredients (except wrappers) with ground pork and eggs. Season to taste.'**
  String get r10_step_3;

  /// No description provided for @r10_step_4.
  ///
  /// In en, this message translates to:
  /// **'Lay out a rice paper wrapper, add filling, and roll tightly.'**
  String get r10_step_4;

  /// No description provided for @r10_step_5.
  ///
  /// In en, this message translates to:
  /// **'First fry: deep fry in medium heat until cooked.'**
  String get r10_step_5;

  /// No description provided for @r10_step_6.
  ///
  /// In en, this message translates to:
  /// **'Second fry: fry again in hotter oil just before serving to make them crispy.'**
  String get r10_step_6;

  /// No description provided for @r11_name.
  ///
  /// In en, this message translates to:
  /// **'Banh Xeo (Vietnamese Pancake)'**
  String get r11_name;

  /// No description provided for @r11_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Banh Xeo flour mix (250g)'**
  String get r11_ing_1;

  /// No description provided for @r11_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Coconut milk (100ml)'**
  String get r11_ing_2;

  /// No description provided for @r11_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Beer (or soda water) (50ml)'**
  String get r11_ing_3;

  /// No description provided for @r11_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Turmeric powder'**
  String get r11_ing_4;

  /// No description provided for @r11_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Pork belly (200g)'**
  String get r11_ing_5;

  /// No description provided for @r11_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Shrimp (200g)'**
  String get r11_ing_6;

  /// No description provided for @r11_ing_7.
  ///
  /// In en, this message translates to:
  /// **'Bean sprouts, spring onions'**
  String get r11_ing_7;

  /// No description provided for @r11_ing_8.
  ///
  /// In en, this message translates to:
  /// **'Fresh herbs, dipping sauce'**
  String get r11_ing_8;

  /// No description provided for @r11_step_1.
  ///
  /// In en, this message translates to:
  /// **'Mix Banh Xeo flour with coconut milk, beer, turmeric, and chopped spring onions. Let rest for 30 minutes.'**
  String get r11_step_1;

  /// No description provided for @r11_step_2.
  ///
  /// In en, this message translates to:
  /// **'Parboil pork belly, slice thinly. Clean shrimp.'**
  String get r11_step_2;

  /// No description provided for @r11_step_3.
  ///
  /// In en, this message translates to:
  /// **'Heat a pan, add oil. Stir-fry pork and shrimp until cooked.'**
  String get r11_step_3;

  /// No description provided for @r11_step_4.
  ///
  /// In en, this message translates to:
  /// **'Pour a ladle of batter into the pan, tilting to spread thinly. Add bean sprouts.'**
  String get r11_step_4;

  /// No description provided for @r11_step_5.
  ///
  /// In en, this message translates to:
  /// **'Cover with a lid for about 2 minutes for the pancake and sprouts to cook.'**
  String get r11_step_5;

  /// No description provided for @r11_step_6.
  ///
  /// In en, this message translates to:
  /// **'Remove lid, fry until the crust is crispy. Fold the pancake in half.'**
  String get r11_step_6;

  /// No description provided for @r11_step_7.
  ///
  /// In en, this message translates to:
  /// **'Serve with fresh herbs and sweet and sour fish sauce.'**
  String get r11_step_7;

  /// No description provided for @r13_name.
  ///
  /// In en, this message translates to:
  /// **'Sour Fish Soup (Canh Chua Ca Loc)'**
  String get r13_name;

  /// No description provided for @r13_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Snakehead fish (1 medium)'**
  String get r13_ing_1;

  /// No description provided for @r13_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Taro stem (Bac Ha)'**
  String get r13_ing_2;

  /// No description provided for @r13_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Okra, tomatoes, bean sprouts'**
  String get r13_ing_3;

  /// No description provided for @r13_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Pineapple'**
  String get r13_ing_4;

  /// No description provided for @r13_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Tamarind paste'**
  String get r13_ing_5;

  /// No description provided for @r13_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Rice paddy herb, culantro, chili'**
  String get r13_ing_6;

  /// No description provided for @r13_step_1.
  ///
  /// In en, this message translates to:
  /// **'Clean fish, cut into chunks, marinate with spices.'**
  String get r13_step_1;

  /// No description provided for @r13_step_2.
  ///
  /// In en, this message translates to:
  /// **'Extract tamarind juice.'**
  String get r13_step_2;

  /// No description provided for @r13_step_3.
  ///
  /// In en, this message translates to:
  /// **'Sauté garlic, stir-fry tomatoes and pineapple.'**
  String get r13_step_3;

  /// No description provided for @r13_step_4.
  ///
  /// In en, this message translates to:
  /// **'Add water, bring to a boil, add tamarind juice.'**
  String get r13_step_4;

  /// No description provided for @r13_step_5.
  ///
  /// In en, this message translates to:
  /// **'When boiling, add fish and cook until done.'**
  String get r13_step_5;

  /// No description provided for @r13_step_6.
  ///
  /// In en, this message translates to:
  /// **'Add okra, taro stem, cook for another 3 minutes.'**
  String get r13_step_6;

  /// No description provided for @r13_step_7.
  ///
  /// In en, this message translates to:
  /// **'Finally, add bean sprouts. Season again to balance sour-salty-sweet flavors.'**
  String get r13_step_7;

  /// No description provided for @r13_step_8.
  ///
  /// In en, this message translates to:
  /// **'Turn off heat, add chopped herbs and chili.'**
  String get r13_step_8;

  /// No description provided for @r14_name.
  ///
  /// In en, this message translates to:
  /// **'Beef Stew (Bo Kho)'**
  String get r14_name;

  /// No description provided for @r14_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Beef shank/flank (500g)'**
  String get r14_ing_1;

  /// No description provided for @r14_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Carrots (2)'**
  String get r14_ing_2;

  /// No description provided for @r14_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Lemongrass (3 stalks)'**
  String get r14_ing_3;

  /// No description provided for @r14_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Ginger, garlic, shallots'**
  String get r14_ing_4;

  /// No description provided for @r14_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Bo Kho seasoning powder (1 packet)'**
  String get r14_ing_5;

  /// No description provided for @r14_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Red wine (50ml) (optional)'**
  String get r14_ing_6;

  /// No description provided for @r14_ing_7.
  ///
  /// In en, this message translates to:
  /// **'Star anise, cinnamon'**
  String get r14_ing_7;

  /// No description provided for @r14_step_1.
  ///
  /// In en, this message translates to:
  /// **'Cut beef into cubes. Marinate with minced ginger, garlic, shallots, seasoning powder, sugar, salt, pepper for 30 minutes.'**
  String get r14_step_1;

  /// No description provided for @r14_step_2.
  ///
  /// In en, this message translates to:
  /// **'Sauté lemongrass, garlic. Add beef and sear.'**
  String get r14_step_2;

  /// No description provided for @r14_step_3.
  ///
  /// In en, this message translates to:
  /// **'Add red wine (if using), stir well.'**
  String get r14_step_3;

  /// No description provided for @r14_step_4.
  ///
  /// In en, this message translates to:
  /// **'Add water to cover beef, add star anise, cinnamon. Simmer on low heat for 1.5 - 2 hours until tender.'**
  String get r14_step_4;

  /// No description provided for @r14_step_5.
  ///
  /// In en, this message translates to:
  /// **'Cut carrots into chunks, add to the pot, simmer for another 20 minutes.'**
  String get r14_step_5;

  /// No description provided for @r14_step_6.
  ///
  /// In en, this message translates to:
  /// **'Season to taste. Serve with baguette or noodles.'**
  String get r14_step_6;

  /// No description provided for @r15_name.
  ///
  /// In en, this message translates to:
  /// **'Stir-fried Glass Noodles with Crab'**
  String get r15_name;

  /// No description provided for @r15_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Glass noodles (200g)'**
  String get r15_ing_1;

  /// No description provided for @r15_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Crab meat (100g)'**
  String get r15_ing_2;

  /// No description provided for @r15_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Shrimp (100g)'**
  String get r15_ing_3;

  /// No description provided for @r15_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Wood ear mushrooms, shiitake mushrooms'**
  String get r15_ing_4;

  /// No description provided for @r15_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Carrot, onion, bean sprouts'**
  String get r15_ing_5;

  /// No description provided for @r15_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Egg (1)'**
  String get r15_ing_6;

  /// No description provided for @r15_ing_7.
  ///
  /// In en, this message translates to:
  /// **'Spring onions, cilantro'**
  String get r15_ing_7;

  /// No description provided for @r15_step_1.
  ///
  /// In en, this message translates to:
  /// **'Soak noodles until soft, cut, blanch, rinse with cold water, toss with 1 tbsp oil.'**
  String get r15_step_1;

  /// No description provided for @r15_step_2.
  ///
  /// In en, this message translates to:
  /// **'Soak mushrooms until soft, julienne. Julienne carrot, onion.'**
  String get r15_step_2;

  /// No description provided for @r15_step_3.
  ///
  /// In en, this message translates to:
  /// **'Peel shrimp. Sauté garlic, stir-fry shrimp and crab meat, season.'**
  String get r15_step_3;

  /// No description provided for @r15_step_4.
  ///
  /// In en, this message translates to:
  /// **'Stir-fry vegetables (carrot, onion, mushrooms) until tender-crisp.'**
  String get r15_step_4;

  /// No description provided for @r15_step_5.
  ///
  /// In en, this message translates to:
  /// **'Add noodles to the wok, stir well. Add egg, stirring quickly to coat the noodles.'**
  String get r15_step_5;

  /// No description provided for @r15_step_6.
  ///
  /// In en, this message translates to:
  /// **'Add shrimp, crab, bean sprouts, spring onions. Stir well, season again and sprinkle pepper.'**
  String get r15_step_6;

  /// No description provided for @r16_name.
  ///
  /// In en, this message translates to:
  /// **'Calamansi Tea (Tra Tac)'**
  String get r16_name;

  /// No description provided for @r16_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Black tea (or jasmine tea) (2 bags)'**
  String get r16_ing_1;

  /// No description provided for @r16_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Calamansi (10)'**
  String get r16_ing_2;

  /// No description provided for @r16_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Sugar (100g)'**
  String get r16_ing_3;

  /// No description provided for @r16_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Ice cubes'**
  String get r16_ing_4;

  /// No description provided for @r16_step_1.
  ///
  /// In en, this message translates to:
  /// **'Steep 2 tea bags in 200ml boiling water. Let cool.'**
  String get r16_step_1;

  /// No description provided for @r16_step_2.
  ///
  /// In en, this message translates to:
  /// **'Make simple syrup: 100g sugar with 50ml water, heat until dissolved.'**
  String get r16_step_2;

  /// No description provided for @r16_step_3.
  ///
  /// In en, this message translates to:
  /// **'Juice 8 calamansi. Thinly slice the remaining 2.'**
  String get r16_step_3;

  /// No description provided for @r16_step_4.
  ///
  /// In en, this message translates to:
  /// **'Mix tea: Combine tea, simple syrup, and calamansi juice in a shaker, shake well.'**
  String get r16_step_4;

  /// No description provided for @r16_step_5.
  ///
  /// In en, this message translates to:
  /// **'Add ice to a glass, pour tea, garnish with calamansi slices.'**
  String get r16_step_5;

  /// No description provided for @r17_name.
  ///
  /// In en, this message translates to:
  /// **'Coconut Coffee'**
  String get r17_name;

  /// No description provided for @r17_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese Phin coffee (strong) (50ml)'**
  String get r17_ing_1;

  /// No description provided for @r17_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Coconut cream (thick) (80ml)'**
  String get r17_ing_2;

  /// No description provided for @r17_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Condensed milk (60ml)'**
  String get r17_ing_3;

  /// No description provided for @r17_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Crushed ice (1 glass)'**
  String get r17_ing_4;

  /// No description provided for @r17_step_1.
  ///
  /// In en, this message translates to:
  /// **'Brew a strong phin coffee and let it cool.'**
  String get r17_step_1;

  /// No description provided for @r17_step_2.
  ///
  /// In en, this message translates to:
  /// **'Add coconut cream, condensed milk, and ice to a blender.'**
  String get r17_step_2;

  /// No description provided for @r17_step_3.
  ///
  /// In en, this message translates to:
  /// **'Blend on high speed until smooth like snow (about 1-2 minutes).'**
  String get r17_step_3;

  /// No description provided for @r17_step_4.
  ///
  /// In en, this message translates to:
  /// **'Pour the coconut mixture into a glass.'**
  String get r17_step_4;

  /// No description provided for @r17_step_5.
  ///
  /// In en, this message translates to:
  /// **'Gently pour the cooled coffee on top to create layers.'**
  String get r17_step_5;

  /// No description provided for @r18_name.
  ///
  /// In en, this message translates to:
  /// **'Orange Juice'**
  String get r18_name;

  /// No description provided for @r18_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Oranges (3-4)'**
  String get r18_ing_1;

  /// No description provided for @r18_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Sugar (optional)'**
  String get r18_ing_2;

  /// No description provided for @r18_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Ice cubes'**
  String get r18_ing_3;

  /// No description provided for @r18_step_1.
  ///
  /// In en, this message translates to:
  /// **'Cut oranges in half.'**
  String get r18_step_1;

  /// No description provided for @r18_step_2.
  ///
  /// In en, this message translates to:
  /// **'Use a juicer to extract the juice.'**
  String get r18_step_2;

  /// No description provided for @r18_step_3.
  ///
  /// In en, this message translates to:
  /// **'Strain through a sieve to remove seeds and large pulp (if desired).'**
  String get r18_step_3;

  /// No description provided for @r18_step_4.
  ///
  /// In en, this message translates to:
  /// **'Add sugar if the oranges are sour, stir to dissolve.'**
  String get r18_step_4;

  /// No description provided for @r18_step_5.
  ///
  /// In en, this message translates to:
  /// **'Add ice cubes to a glass and pour the orange juice.'**
  String get r18_step_5;

  /// No description provided for @r19_name.
  ///
  /// In en, this message translates to:
  /// **'Mango Smoothie'**
  String get r19_name;

  /// No description provided for @r19_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Ripe mango (1)'**
  String get r19_ing_1;

  /// No description provided for @r19_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Fresh milk (100ml)'**
  String get r19_ing_2;

  /// No description provided for @r19_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Condensed milk (2 tbsp)'**
  String get r19_ing_3;

  /// No description provided for @r19_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Ice cubes (1 glass)'**
  String get r19_ing_4;

  /// No description provided for @r19_step_1.
  ///
  /// In en, this message translates to:
  /// **'Peel mango, cut into small pieces.'**
  String get r19_step_1;

  /// No description provided for @r19_step_2.
  ///
  /// In en, this message translates to:
  /// **'Add mango, fresh milk, condensed milk, and ice cubes to a blender.'**
  String get r19_step_2;

  /// No description provided for @r19_step_3.
  ///
  /// In en, this message translates to:
  /// **'Blend on high speed until the mixture is smooth.'**
  String get r19_step_3;

  /// No description provided for @r19_step_4.
  ///
  /// In en, this message translates to:
  /// **'Pour into a glass and enjoy.'**
  String get r19_step_4;

  /// No description provided for @r20_name.
  ///
  /// In en, this message translates to:
  /// **'Bubble Tea (Pearl Milk Tea)'**
  String get r20_name;

  /// No description provided for @r20_ing_1.
  ///
  /// In en, this message translates to:
  /// **'Black tea (2 bags)'**
  String get r20_ing_1;

  /// No description provided for @r20_ing_2.
  ///
  /// In en, this message translates to:
  /// **'Condensed milk (50ml)'**
  String get r20_ing_2;

  /// No description provided for @r20_ing_3.
  ///
  /// In en, this message translates to:
  /// **'Tapioca starch (100g)'**
  String get r20_ing_3;

  /// No description provided for @r20_ing_4.
  ///
  /// In en, this message translates to:
  /// **'Cocoa powder (10g)'**
  String get r20_ing_4;

  /// No description provided for @r20_ing_5.
  ///
  /// In en, this message translates to:
  /// **'Black sugar (50g)'**
  String get r20_ing_5;

  /// No description provided for @r20_ing_6.
  ///
  /// In en, this message translates to:
  /// **'Ice cubes'**
  String get r20_ing_6;

  /// No description provided for @r20_step_1.
  ///
  /// In en, this message translates to:
  /// **'Make pearls: Mix tapioca starch, cocoa powder. slowly pour boiling water, knead dough. Roll into small balls. Boil pearls for 15 mins, turn off heat, rest for 15 mins. Remove, soak in ice water, then mix with black sugar.'**
  String get r20_step_1;

  /// No description provided for @r20_step_2.
  ///
  /// In en, this message translates to:
  /// **'Brew tea: Steep tea in 200ml boiling water. Strain.'**
  String get r20_step_2;

  /// No description provided for @r20_step_3.
  ///
  /// In en, this message translates to:
  /// **'Make milk tea: Add condensed milk to hot tea, stir until dissolved.'**
  String get r20_step_3;

  /// No description provided for @r20_step_4.
  ///
  /// In en, this message translates to:
  /// **'Add pearls to a glass, add ice, pour milk tea and enjoy.'**
  String get r20_step_4;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
