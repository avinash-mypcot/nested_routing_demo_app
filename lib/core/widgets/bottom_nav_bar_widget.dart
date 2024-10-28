import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../blocs/bottom_nav_bloc/bottom_nav_bloc.dart';
import '../constants/constants.dart';
import '../theme/colors.dart';
import '../theme/text_styles.dart';

@RoutePage()
class CommonBottomNavigationPage extends StatefulWidget {
  const CommonBottomNavigationPage({super.key});

  @override
  State<CommonBottomNavigationPage> createState() =>
      _CommonBottomNavigationPageState();
}

class _CommonBottomNavigationPageState
    extends State<CommonBottomNavigationPage> {
  int selectedIndex = 0;

  @override
  void initState() {
    context.read<BottomNavBloc>().add(ChangeTab(index: 0));
    super.initState();
  }

  TabsRouter? tabsRouter;

  void _onItemTapped(int index) async {
    selectedIndex = index;
    tabsRouter!.setActiveIndex(index);
    context.read<BottomNavBloc>().add(ChangeTab(index: index));
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRoute(),
          ExploreRoute(),
          CartRoute(),
          FavoriteRoute(),
          AccountRoute()
        ],
        builder: (context, child) {
          tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: child,
            bottomNavigationBar: BlocBuilder<BottomNavBloc, BottomNavState>(
              builder: (context, state) {
                if (state is BottomNavIndex) {
                  selectedIndex = state.index;
                }

                return Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(230, 235, 243, 0.5),
                          blurRadius: 37,
                          offset: Offset(0, -12))
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: kColorWhite,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomBottomNavItem(
                          iconPath: Constants.kShopIc,
                          label: "Shop",
                          isSelected: selectedIndex == 0,
                          onTap: () => _onItemTapped(0),
                        ),
                        CustomBottomNavItem(
                          iconPath: Constants.kExploreIc,
                          label: "Explore",
                          isSelected: selectedIndex == 1,
                          onTap: () => _onItemTapped(1),
                        ),
                        CustomBottomNavItem(
                          iconPath: Constants.kCartIc,
                          label: "Cart",
                          isSelected: selectedIndex == 2,
                          onTap: () => _onItemTapped(2),
                        ),
                        CustomBottomNavItem(
                          iconPath: Constants.kFavouriteIc,
                          label: "Favorite",
                          isSelected: selectedIndex == 3,
                          onTap: () => _onItemTapped(3),
                        ),
                        CustomBottomNavItem(
                          iconPath: Constants.kAccountIc,
                          label: "Account",
                          isSelected: selectedIndex == 4,
                          onTap: () => _onItemTapped(4),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}

class CustomBottomNavItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomBottomNavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // width: 20.w,
            padding: EdgeInsets.only(top: 10.86.h, bottom: 5.71.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),

            child: SizedBox(
              width: isSelected ? 24.w : 20.w,
              height: isSelected ? 24.w : 20.w,
              child: SvgPicture.asset(
                width: isSelected ? 24.w : 20.w,
                iconPath,
                color: isSelected ? kColorPrimary : kColorBlack,
              ),
            ),
          ),
          SizedBox(
            height: 10.86.h,
          ),
          Text(
            label,
            style: isSelected
                ? kTextStyleGilroy400.copyWith(
                    height: 0.1,
                    color: kColorPrimary,
                    fontSize: 12.sp,
                  )
                : kTextStyleGilroy400.copyWith(
                    color: kColorBlack,
                    height: 0.1,
                    fontSize: 12.sp,
                  ),
          ),
          SizedBox(
            height: 12.43.h,
          )
        ],
      ),
    );
  }
}
