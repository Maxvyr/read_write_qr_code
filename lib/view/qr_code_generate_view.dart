import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:read_write_qr_code/utils/utils_widget.dart';

class QrCodeGenerateView extends StatefulWidget {
  const QrCodeGenerateView({Key? key}) : super(key: key);

  @override
  _QrCodeGenerateViewState createState() => _QrCodeGenerateViewState();
}

class _QrCodeGenerateViewState extends State<QrCodeGenerateView> {
  @override
  Widget build(BuildContext context) {
    const message = 'https://servlet.vizeo.eu/intraveOS.html';
    const size = 280.0;

    return BaseWidget(
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
    );
  }
}
