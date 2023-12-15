import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:information/app/data/constants/color.dart';
import 'package:marquee/marquee.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: cWhite,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          title: 'ANTRIAN PASIEN POLI',
                          color: cBlue,
                          size: 24,
                          weight: FontWeight.w500,
                        ),
                        TextWidget(
                          title: '999',
                          color: cBlue,
                          size: 300,
                          weight: FontWeight.w500,
                        ),
                      ]),
                ),
              ),
              Container(
                width: 4,
                color: cBlue,
              ),
              Expanded(
                child: Container(
                  color: cWhite,
                ),
              )
            ],
          ),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 80,
              color: Colors.white,
              child: const Center(
                child: TextWidget(
                  title: "RUMAH SAKIT UMUM SANTA ELISABETH SAMBAS",
                  color: cBlue,
                  size: 40,
                  weight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 80,
              color: cBlue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Marquee(
                  text:
                      'MOHON MENUNGGU ANTRIAN DI TEMPAT YANG TELAH DISEDIAKAN',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: cWhite,
                    fontSize: 50,
                  ),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 100.0,
                  velocity: 100.0,
                  pauseAfterRound: const Duration(seconds: 1),
                  startPadding: 30.0,
                  accelerationDuration: const Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: const Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.title,
    required this.color,
    required this.size,
    required this.weight,
    super.key,
  });

  final String title;
  final Color color;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
