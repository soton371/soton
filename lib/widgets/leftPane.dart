import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soton_portfolio/utilities/my_colors.dart';
import 'package:soton_portfolio/utilities/my_sizes.dart';

class LeftPanel extends StatefulWidget {
  const LeftPanel({Key? key}) : super(key: key);

  @override
  State<LeftPanel> createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {

  String hoverIs = '';

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //for github action
                      SizedBox(
                        height: MySizes.getMqHeight(context) * 0.07,
                        child: InkWell(
                          onTap: () async {
                            // await launchUrl(
                            //     Uri.parse("https://github.com/jeeva-HBK"));
                          },
                          onHover: (bol) {
                            if (bol) {
                              setState(() {
                                hoverIs = "git";
                              });
                            } else {
                              setState(() {
                                hoverIs = "";
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                bottom: hoverIs == "git" ? 5.0 : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: FaIcon(FontAwesomeIcons.github,color: hoverIs == 'git'?MyColors.neonColor:MyColors.textLight,size: 22,),
                          ),
                        ),
                      ),
                      //end github action

                      //for linkedin action
                      SizedBox(
                        height: MySizes.getMqHeight(context) * 0.07,
                        child: InkWell(
                          onTap: () async {
                            // await launchUrl(Uri.parse(
                            //     "https://www.linkedin.com/in/jeeva-hbk/"));
                          },
                          onHover: (bol) {
                            if (bol) {
                              setState(() {
                                hoverIs = 'linkedIn';
                              });
                            } else {
                              setState(() {
                                hoverIs = '';
                              });
                            }
                          },
                          child: Container(
                            color: Colors.red,
                                // bottom: hoverIs == "linkedIn" ? 25.0 : 0),
                            padding: EdgeInsets.only(bottom: hoverIs == "linkedIn" ?0.0:8.0),
                            child: FaIcon(FontAwesomeIcons.linkedin,color: hoverIs == 'linkedIn'?MyColors.neonColor:MyColors.textLight,size: 22,),
                          ),
                        ),
                      ),
                      //end linkedin action


                      SizedBox(
                        height: MySizes.getMqHeight(context) * 0.07,
                        child: InkWell(
                          onTap: () async {
                            // await launchUrl(Uri.parse(
                            //     "https://stackoverflow.com/users/19705360/mr-jeeva"));
                          },
                          onHover: (bol) {
                            if (bol) {
                              setState(() {
                                hoverIs = 'stackoverflow';
                              });
                            } else {
                              setState(() {
                                hoverIs = '';
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                bottom: hoverIs == "stackoverflow" ? 5.0 : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: FaIcon(FontAwesomeIcons.stackOverflow,color: hoverIs == 'stackoverflow'?MyColors.neonColor:MyColors.textLight,size: 22,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ),
            Expanded(
                child: Container(
                  width: 1,
                  color: MyColors.textLight,
                ))
          ],
        ));
  }
}
