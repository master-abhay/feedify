import 'package:feedify/core/components/tooltip/gesture_tooltip.dart';
import 'package:feedify/core/mixins/media_query_mixin.dart';
import 'package:feedify/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_dimensions.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with MediaQueryMixin {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        // backgroundColor: theme.colorScheme.onPrimary,
        body: _buildUi(context:context,theme: theme),
    );
  }

  Widget _buildUi({required BuildContext context,required ThemeData theme}) {
    return Column(
      children: [
        Padding(
          padding: kHorizontalPadding,
          child: Column(
            children: [
              /// header
              _header(),

              /// search bar and menu button
              _searchAndMenu(onSearch: (value) {}, onMenuTap: () {}),
              largeSizedBox,
            ],
          ),
        ),

        /// Categories
        _categories(),

        /// content
        Expanded(
          child: _content(),
        )
      ],
    );
  }

  /// HEADER CONTENT
  Widget _header() {
    return SafeArea(
      child: Row(
        children: [
          /// title and description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(
                  AppConstants.appName,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.lobster(
                    fontSize: 45,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                /// Description
                 Text(
                  AppConstants.appSlogan,
                  style: const TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          /// profile picture
          GestureTooltip(
              borderRadius: radiusLarge,
              tooltip: "Profile Picture",
              onTap: () {},
              child: Ink(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radiusLarge),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(AppConstants.profileImageDummy),
                      onError: (object,stackTrace)=>  AssetImage(AppConstants.onErrorAssetImage)
                    ),
                ),
              ))
        ],
      ),
    );
  }

  /// SEARCH AND MENU CONTENT
  Widget _searchAndMenu(
      {required Function(String) onSearch, required VoidCallback onMenuTap}) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          /// search field
          Expanded(
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(radiusExtraLarge),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0, // Controls the spread of the shadow
                      spreadRadius: 2.0, // Extends the shadow around all sides
                      offset: const Offset(
                          0, 0), // Ensures the shadow is evenly distributed
                    ),
                  ],
                  borderRadius:
                      BorderRadius.circular(radiusExtraLarge),
                ),
                child: TextField(
                  onChanged: (value) {},
                  controller: _searchController,
                  focusNode: _searchFocusNode,
                  cursorColor: theme.colorScheme.primary,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.text,
                  onTapOutside: (context) {
                    _searchFocusNode.unfocus();
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    border: _searchFieldBorder(),
                    enabledBorder: _searchFieldBorder(),
                    disabledBorder: _searchFieldBorder(),
                    focusedErrorBorder: _searchFieldBorder(),
                    focusedBorder:
                        _searchFieldBorder(theme.colorScheme.onPrimary),
                    errorBorder: _searchFieldBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
          ),
          mediumSizedBox,

          /// menu button
          Container(
            height: 55,
            width: 60,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(radiusExtraLarge),
            ),
            child: GestureTooltip(
              tooltip: "Menu",
              borderRadius: radiusExtraLarge,
              onTap: onMenuTap,
              child: const Icon(
                Icons.menu_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  InputBorder _searchFieldBorder([Color? color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(radiusExtraLarge),
    );
  }

  /// CATEGORIES
  int activeIndex = 0;
  final List<String> categories = [
    "Chinese Burger",
    "Pizza",
    "Pasta",
    "Sushi",
    "Tacos",
    "Sandwich",
    "Biryani",
    "Salad"
  ]; // Example category names
  Widget _categories() {
    final theme = Theme.of(context);

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        itemCount: categories.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool isActive = index == activeIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isActive ? theme.colorScheme.primary : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(isActive ? 20.0 : 12.0),
                border: Border.all(color: isActive ? theme.colorScheme.primary : Colors.grey.shade400),
                boxShadow: isActive
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8.0,
                          offset: const Offset(0, 3),
                        ),
                      ]
                    : [],
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// CONTENT
  bool inFavourites = false;

  Widget _content() {
    return GridView.builder(
        padding: const EdgeInsets.only(top: medium, bottom: large),
        itemCount: 20,
        physics: const AlwaysScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          // mainAxisExtent: 210
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, int index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index % 2 == 0 ? horizontalPaddingSpace : 0,
                right: index % 2 == 1 ? horizontalPaddingSpace : 0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
              width: screenWidth / 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 0.1,
                        blurRadius: 7,
                        offset: const Offset(0, 0))
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                      child: Image(
                    image: AssetImage("assets/home/dummy_burger.png"),
                  )),
                  smallSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Cheese Burger",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(mainAxisSize: MainAxisSize.max, children: [
                        const Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 14,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureTooltip(
                            tooltip: "Add to Favourite",
                            onTap: () {
                              setState(() {
                                inFavourites =!inFavourites;
                              });
                            },
                            borderRadius: 30,
                            child: Icon(
                              inFavourites
                                  ? Icons.favorite_outlined
                                  : Icons.favorite_outline,
                              color: index == 0 ? Colors.red : Colors.black,
                            ))
                      ])
                    ],
                  ),
                  smallSizedBox,
                ],
              ),
            ),
          );
        });
  }
}
