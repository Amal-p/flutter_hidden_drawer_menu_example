import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_f3/models/cardmodels.dart';
import 'package:ui_f3/models/operationmode.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  List<T> map<T>(List list, Function handler) {
    List<T> reslt = [];
    for (var i = 0; i < list.length; i++) {
      reslt.add(handler(i, list[i]));
    }
    return reslt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 8),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          // custom App Bar
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => {print('Drawer Taped')},
                    child: SvgPicture.asset('assets/svg/drawe_icon.svg')),
                Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/user_image.png'))))
              ],
            ),
          ),
          // Card section
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning !",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3A3A3A)),
                ),
                Text(
                  "Xariyotha",
                  style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3A3A3A)),
                ),
              ],
            ),
          ),
          Container(
            height: 199,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 199,
                    width: 344,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(
                          int.parse(cards[index].CardBackground),
                        )),
                    child: Stack(
                      children: [
                        Positioned(
                            child:
                                SvgPicture.asset(cards[index].CardElementTop)),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                cards[index].CardElementBottom)),
                        Positioned(
                          top: 48,
                          left: 29,
                          child: Text(
                            "CARD NUMBER",
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 29,
                          child: Text(
                            cards[index].CardNumber,
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        Positioned(
                            right: 21,
                            top: 35,
                            child: Image.asset(
                              cards[index].CardType,
                              width: 27,
                              height: 27,
                            )),
                        Positioned(
                          left: 29,
                          bottom: 45,
                          child: Text(
                            'CARD HOLDERNAME',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29,
                          bottom: 21,
                          child: Text(
                            cards[index].user,
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 202,
                          bottom: 45,
                          child: Text(
                            'EXPIRY DATE',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 202,
                          bottom: 21,
                          child: Text(
                            cards[index].CardExpiried,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 29,
              left: 16,
              bottom: 13,
            ),
            child: Row(
              children: [
                Text('Operations'),
                Row(
                  children: [
                    map<Widget>(datas, (index, selected) {
                      return Container();
                    })
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
