import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgAppointmentIcons,
      activeIcon: ImageConstant.imgAppointmentIcons,
      type: BottomBarEnum.Appointmenticons,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMedicineIcon1,
      activeIcon: ImageConstant.imgMedicineIcon1,
      type: BottomBarEnum.Medicineicon1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHomeIcon11,
      activeIcon: ImageConstant.imgHomeIcon11,
      type: BottomBarEnum.Homeicon11,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfileIcon1,
      activeIcon: ImageConstant.imgProfileIcon1,
      type: BottomBarEnum.Profileicon1,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.v,
      decoration: BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder23,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 34.v,
                width: 44.h,
                margin: EdgeInsets.only(
                  top: 7.v,
                  bottom: 4.v,
                ),
              ),
            ),
            activeIcon: SizedBox(
              height: 52.v,
              width: 47.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 45.v,
                      width: 47.h,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 6.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                        borderRadius: BorderRadius.circular(
                          23.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 52.v,
                    width: 46.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Appointmenticons,
  Medicineicon1,
  Homeicon11,
  Profileicon1,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
