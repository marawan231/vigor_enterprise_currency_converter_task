import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/font_manager.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';


ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: ColorsManager.white,
      splashColor: ColorsManager.transparent,
      highlightColor: ColorsManager.transparent,
      fontFamily: FontManager.fontFamily,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        elevation: 0,
        titleSpacing: 16.sp,
        // titleTextStyle: ,
        backgroundColor: ColorsManager.white,
        iconTheme: const IconThemeData(color: ColorsManager.white),
      ),

      popupMenuTheme: PopupMenuThemeData(
          position: PopupMenuPosition.under,
          elevation: 2,
          color: ColorsManager.black,
          surfaceTintColor: ColorsManager.black,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: ColorsManager.black, width: 1),
              borderRadius: BorderRadius.circular(8.r))),
      // App bar background color),
      // textSelectionTheme:
      //     const TextSelectionThemeData(cursorColor: ColorsManager.primary),
      textTheme: const TextTheme(
          // labelLarge: TextStyle(color: Color(0xff121318)),
          // labelMedium: TextStyle(color: Color(0xff121318)),
          // labelSmall: TextStyle(color: Color(0xff121318)),
          // bodyLarge: TextStyle(color: Color(0xff121318)),
          // bodyMedium: TextStyle(color: Color(0xff121318)),
          // bodySmall: TextStyle(color: Color(0xff121318)),
          // displayLarge: TextStyle(color: Color(0xff121318)),
          // displayMedium: TextStyle(color: Color(0xff121318)),
          // displaySmall: TextStyle(color: Color(0xff121318)),
          // headlineLarge: TextStyle(color: Color(0xff121318)),
          // headlineMedium: TextStyle(color: Color(0xff121318)),
          // headlineSmall: TextStyle(color: Color(0xff121318)),
          // titleLarge: TextStyle(color: Color(0xff121318)),
          // titleMedium: TextStyle(color: Color(0xff121318)),
          // titleSmall: TextStyle(color: Color(0xff121318)),
          ),
      inputDecorationTheme: InputDecorationTheme(
        // isDense: true,

        filled: true,
        fillColor: ColorsManager.white,

        hintStyle: getRegularStyle(
            color: ColorsManager.darkGrey, fontSize: 14.sp, height: 3),
        contentPadding: EdgeInsetsDirectional.only(
          top: 13.sp,
          bottom: 13.sp,
          start: 20.sp,
          end: 20.sp,
        ),

        enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ColorsManager.greyTextColor, width: 1),
            borderRadius: BorderRadius.circular(8.r)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.primary, width: 1),
            borderRadius: BorderRadius.circular(8.r)),
        disabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ColorsManager.greyTextColor, width: 1),
            borderRadius: BorderRadius.circular(8.r)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.error, width: 1),
            borderRadius: BorderRadius.circular(8.r)),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsManager.error, width: 1),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorsManager.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: ColorsManager.white,
        selectedItemColor: ColorsManager.primary,
        selectedLabelStyle: getMediumStyle(fontSize: 13),
        unselectedLabelStyle:
            getMediumStyle(fontSize: 13), // Navigation bar background color
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ColorsManager.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
        elevation: 0,
      ),

      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ButtonStyle(
      //       foregroundColor:
      //           MaterialStateProperty.all<Color>(ColorsManager.white),
      //       backgroundColor:
      //           MaterialStateProperty.all<Color>(ColorsManager.primary)),
      // ),
    );

// ThemeData get darkThemeColor => ThemeData.dark(useMaterial3: true).copyWith(
//       scaffoldBackgroundColor: ColorsManager.black,
//       hintColor: ColorsManager.textGrey,
//       appBarTheme:
//           const AppBarTheme(backgroundColor: ColorsManager.blackBackground),
//       // App bar background color),
//       textTheme: const TextTheme(
//         labelLarge: TextStyle(color: ColorsManager.white),
//         labelMedium: TextStyle(color: ColorsManager.white),
//         labelSmall: TextStyle(color: ColorsManager.white),
//         bodyLarge: TextStyle(color: ColorsManager.white),
//         bodyMedium: TextStyle(color: ColorsManager.white),
//         bodySmall: TextStyle(color: ColorsManager.white),
//         displayLarge: TextStyle(color: ColorsManager.white),
//         displayMedium: TextStyle(color: ColorsManager.white),
//         displaySmall: TextStyle(color: ColorsManager.white),
//         headlineLarge: TextStyle(color: ColorsManager.white),
//         headlineMedium: TextStyle(color: ColorsManager.white),
//         headlineSmall: TextStyle(color: ColorsManager.white),
//         titleLarge: TextStyle(color: ColorsManager.white),
//         titleMedium: TextStyle(color: ColorsManager.white),
//         titleSmall: TextStyle(color: ColorsManager.white),
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//           filled: true,
//           fillColor: const Color(0xff353535),
//           isDense: true,
//           contentPadding: EdgeInsets.only(
//               top: AppPadding.pH16,
//               bottom: AppPadding.pH16,
//               left: AppPadding.pH16,
//               right: AppPadding.pH16),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(16)),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(16)),
//           disabledBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(16)),
//           errorBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(16)),
//           focusedErrorBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(16))),
//       iconTheme: const IconThemeData(color: ColorsManager.white),
//       // Icon color
//       bottomSheetTheme: const BottomSheetThemeData(
//         backgroundColor: ColorsManager.buttonColorDark,
//         modalBackgroundColor: ColorsManager.buttonColorDark,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//         elevation: 0,
//       ),
//       // //bottom navigation bar
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         elevation: 0,
//         backgroundColor: ColorsManager.buttonColorDark,
//         selectedItemColor: ColorsManager.grey500,
//         unselectedItemColor: ColorsManager.white,
//       ),
//       switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.resolveWith((Set states) {
//           if (states.contains(MaterialState.selected)) {
//             return ColorsManager.primary;
//           }
//           return ColorsManager.grey3;
//         }),
//       ),
//       // elevatedButtonTheme: ElevatedButtonThemeData(
//       //   style: ButtonStyle(
//       //       foregroundColor:
//       //           MaterialStateProperty.all<Color>(ColorsManager.white),
//       //       backgroundColor:
//       //           MaterialStateProperty.all<Color>(ColorsManager.primary)),
//       // ),
//     );
