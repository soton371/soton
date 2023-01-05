import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:soton_portfolio/utilities/my_colors.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget{
  final AutoScrollController controller;
  const MyAppBar(this.controller, {Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(right: 55.0, top: 33.0,left: 55.0),
      child: Row(
        children: [
          Expanded(child: Text("SOTON",style: TextStyle(fontFamily: 'sfmono',color: MyColors.neonColor,fontSize: 20,fontStyle: FontStyle.italic),)),
          Expanded(
            flex: 9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    widget.controller.scrollToIndex(1,
                        preferPosition: AutoScrollPosition.begin);
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Row(
                      children: [
                        Text("01. ",
                            style: TextStyle(
                                color: MyColors.neonColor,
                                fontSize: 13,
                                fontFamily: 'sfmono')),
                        Text("About",
                            style: TextStyle(
                                color: MyColors.textColor,
                                fontSize: 13,
                                fontFamily: 'sfmono'))
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.controller.scrollToIndex(2,
                        preferPosition: AutoScrollPosition.begin);
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Row(
                      children: [
                        Text("02. ",
                            style: TextStyle(
                                color: MyColors.neonColor,
                                fontSize: 13,
                                fontFamily: 'sfmono')),
                        Text("Experience",
                            style: TextStyle(
                                color: MyColors.textColor,
                                fontSize: 13,
                                fontFamily: 'sfmono'))
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.controller.scrollToIndex(3,
                        preferPosition: AutoScrollPosition.begin);
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Row(
                      children: [
                        Text("03. ",
                            style: TextStyle(
                                color: MyColors.neonColor,
                                fontSize: 13,
                                fontFamily: 'sfmono')),
                        Text("Work",
                            style: TextStyle(
                                color: MyColors.textColor,
                                fontSize: 13,
                                fontFamily: 'sfmono'))
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.controller.scrollToIndex(4,
                        preferPosition: AutoScrollPosition.begin);
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Row(
                      children: [
                        Text("04.",
                            style: TextStyle(
                                color: MyColors.neonColor,
                                fontSize: 13,
                                fontFamily: 'sfmono')),
                        Text("Contact",
                            style: TextStyle(
                                color: MyColors.textColor,
                                fontSize: 13))
                      ],
                    ),
                  ),
                ),
                InkWell(
                        onTap: () {
                          // AppClass().downloadResume(context);
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(3.0)),
                              border: Border.all(
                                  color: MyColors.neonColor, width: 1.5)),
                          child: Center(
                            child: Text('Resume',
                                style: TextStyle(
                                    color: MyColors.neonColor,
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'sfmono')),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
