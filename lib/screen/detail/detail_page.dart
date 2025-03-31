import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:astro_learn_space_app/provider/solar_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3), // Blur effect
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/img/kashish.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,bottom: 20),
                          child: Text(
                            'Details',
                            style: GoogleFonts.orbitron(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                letterSpacing: 2,
                              ),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        context
                            .watch<SolorProvider>()
                            .solarSystemData[context
                                .watch<SolorProvider>()
                                .seletcedIndex]
                            .name!,
                        style: GoogleFonts.orbitron(
                          textStyle: TextStyle(color: Colors.white, fontSize: 60),
                        ),
                      ),
                  
                      AnimatedContainer(
                        height: 220,
                        width: 220,
                        duration: Duration(seconds: 3),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                      .watch<SolorProvider>()
                                      .seletcedIndex]
                                  .gif!,
                            ),
                          ),
                        ),
                      ),
                      Divider(color: Colors.white, thickness: 1.5),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'TYPE'),
                            countDetail(
                              context: context,
                              count:
                                  context
                                      .watch<SolorProvider>()
                                      .solarSystemData[context
                                          .watch<SolorProvider>()
                                          .seletcedIndex]
                                      .type
                                      .toString(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'AGE'),
                            countDetail(
                              context: context,
                              count:
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                  .watch<SolorProvider>()
                                  .seletcedIndex]
                                  .age
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'Diameter_km'),
                            countDetail(
                              context: context,
                              count:
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                  .watch<SolorProvider>()
                                  .seletcedIndex]
                                  .diameter_km
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'Mass_kg'),
                            countDetail(
                              context: context,
                              count:
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                  .watch<SolorProvider>()
                                  .seletcedIndex]
                                  .mass_kg
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'Gravity_m_s2'),
                            countDetail(
                              context: context,
                              count:
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                  .watch<SolorProvider>()
                                  .seletcedIndex]
                                  .gravity_m_s2
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'Orbital_period\ndays'),
                            countDetail(
                              context: context,
                              count:
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                  .watch<SolorProvider>()
                                  .seletcedIndex]
                                  .orbital_period_days
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            titleDetail(title: 'Distance_from\nsun_km'),
                            countDetail(
                              context: context,
                              count:
                              context
                                  .watch<SolorProvider>()
                                  .solarSystemData[context
                                  .watch<SolorProvider>()
                                  .seletcedIndex]
                                  .distance_from_sun_km
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget countDetail({required BuildContext context, required String count}) {
    return Center(
      child: Text(
        count,
        style: GoogleFonts.orbitron(
          textStyle: TextStyle(
            color: Color(0xfff6b674),
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget titleDetail({required String title}) {
    return Center(
      child: Text(
        title,
        style: GoogleFonts.orbitron(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
