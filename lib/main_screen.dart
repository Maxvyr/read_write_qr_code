import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    const message = 'https://servlet.vizeo.eu/intraveOS.html';
    const size = 280.0;

    return Material(
      color: Colors.white,
      child: SafeArea(
        top: true,
        bottom: true,
        child: SizedBox(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: 280,
                    child: CustomPaint(
                      size: const Size.square(size),
                      painter: QrPainter(
                        data: message,
                        version: QrVersions.auto,
                        eyeStyle: const QrEyeStyle(
                          eyeShape: QrEyeShape.square,
                          color: ui.Color.fromARGB(255, 180, 92, 21),
                        ),
                        dataModuleStyle: const QrDataModuleStyle(
                          dataModuleShape: QrDataModuleShape.circle,
                          color: ui.Color.fromARGB(
                            255,
                            10,
                            31,
                            24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ).copyWith(
                  bottom: 40,
                ),
                child: const Text(
                  message,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
