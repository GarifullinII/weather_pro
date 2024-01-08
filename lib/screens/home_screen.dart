import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                height: 300,
                width: 600,
                decoration: const BoxDecoration(
                  color: Colors.cyanAccent,
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        '📍Aix-en-Provence',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Good Morning',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
