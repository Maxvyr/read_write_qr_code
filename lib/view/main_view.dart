import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_write_qr_code/utils/utils_navigator.dart';
import 'package:read_write_qr_code/utils/utils_widget.dart';
import 'package:read_write_qr_code/view/qr_code_generate_view.dart';
import 'package:read_write_qr_code/view/qr_code_scan_view.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({Key? key}) : super(key: key);
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () => UtilsNavigator.goToNextPage(
              context,
              const QrCodeScanView(),
            ),
            child: const Text(
              "Scan QrCode",
            ),
          ),
          ElevatedButton(
            onPressed: () => UtilsNavigator.goToNextPage(
              context,
              const QrCodeGenerateView(),
            ),
            child: const Text(
              "Generate QrCode",
            ),
          ),
        ],
      )),
    );
  }
}
