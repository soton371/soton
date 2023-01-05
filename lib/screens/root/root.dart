import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:soton_portfolio/utilities/my_sizes.dart';
import 'package:soton_portfolio/widgets/appbar.dart';
import 'package:soton_portfolio/widgets/leftPane.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  final aScrollController = AutoScrollController();
  bool scrollControlProvider = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  setState((){
                    scrollControlProvider = false;
                  });

                } else if (direction == ScrollDirection.forward) {
                  setState((){
                    scrollControlProvider = true;
                  });
                }
                return true;
              },
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white,
                          Color(0xffFDF5EE)
                        ])),
                height: MySizes.getMqHeight(context),
                child: Column(
                  children: [
                    AnimatedOpacity(
                      opacity: scrollControlProvider ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: MyAppBar(aScrollController),
                    ),
                    Expanded(
                      child: () {
                        return Row(
                          children: [
                            //for left panel
                            const LeftPanel(),
                            //end left panel
                            Expanded(
                                flex: 8,
                                child: ListView(
                                  controller: aScrollController,
                                  children: [
                                    AutoScrollTag(
                                        key: const ValueKey(0),
                                        controller: aScrollController,
                                        index: 0,
                                        child: Container(
                                          height: 100,
                                          width: double.infinity,
                                          color: Colors.transparent,
                                          child: const Text('data1'),
                                        ),
                                    ),
                                    AutoScrollTag(
                                        key: const ValueKey(1),
                                        controller: aScrollController,
                                        index: 1,
                                      child: Container(
                                        height: 200,
                                        width: double.infinity,
                                        color: Colors.transparent,
                                        child: const Text('data2'),
                                      ),
                                    ),
                                    AutoScrollTag(
                                        key: const ValueKey(2),
                                        controller: aScrollController,
                                        index: 2,
                                        child: Container(
                                          height: 300,
                                          width: double.infinity,
                                          color: Colors.transparent,
                                          child: const Text('data3'),
                                        ),
                                    ),
                                    AutoScrollTag(
                                        key: const ValueKey(3),
                                        controller: aScrollController,
                                        index: 3,
                                        child: Container(
                                          height: 400,
                                          width: double.infinity,
                                          color: Colors.transparent,
                                          child: const Text('data4'),
                                        ),
                                    ),
                                    AutoScrollTag(
                                        key: const ValueKey(4),
                                        controller: aScrollController,
                                        index: 4,
                                        child: Container(
                                          height: 500,
                                          width: double.infinity,
                                          color: Colors.transparent,
                                          child: const Text('data5'),
                                        ),
                                    )
                                  ],
                                )),
                            const Text('RightPane()'),
                          ],
                        );
                      }(),
                    ),
                  ],
                ),
              ),
          ),
        )
    );
  }
}
