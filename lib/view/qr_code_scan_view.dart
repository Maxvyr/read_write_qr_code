import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:read_write_qr_code/utils/utils_widget.dart';

class QrCodeScanView extends StatefulWidget {
  const QrCodeScanView({Key? key}) : super(key: key);

  @override
  _QrCodeScanViewState createState() => _QrCodeScanViewState();
}

class _QrCodeScanViewState extends State<QrCodeScanView> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: SizedBox(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: (result != null)
                    ? Text(
                        """
                          Barcode Type: ${describeEnum(result!.format)}
                          Data: ${result!.code}
                          """,
                      )
                    : const Text(
                        "Scan a QrCode",
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
