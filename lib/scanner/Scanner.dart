import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerMain extends StatefulWidget {
  const ScannerMain({super.key});

  @override
  State<ScannerMain> createState()   => _ScannerMainState();
}

class _ScannerMainState extends State<ScannerMain> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  void _foundBarcode(Barcode barcode, MobileScannerArguments? args){
    if(!_screenOpened){
      final String code = barcode.rawValue ?? '----';

      if(barcode.rawValue == null){
        debugPrint('Failed to scan Barcode');
      } else {
        debugPrint('Barcode found');
        _screenOpened = true;
        Navigator.popAndPushNamed(context, "data_qr_page", arguments: code);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SCANNER'),
        ),
        body: Stack(
          children: <Widget>[
            MobileScanner(
              allowDuplicates: false,
              controller: cameraController,
              onDetect: _foundBarcode,
            ),
            Positioned(
              top: size.height * 0.25,
              right: size.width * 0.22,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(80),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 3
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      IconButton(
                        color: Colors.white,
                        icon: ValueListenableBuilder(
                          valueListenable: cameraController.torchState,
                          builder: (context, state, child) {
                            switch (state as TorchState) {
                              case TorchState.off:
                                return const Icon(Icons.flash_off,
                                    color: Colors.yellow);
                              case TorchState.on:
                                return const Icon(Icons.flash_on,
                                    color: Colors.yellow);
                            }
                          },
                        ),
                        iconSize: 40.0,
                        onPressed: () => cameraController.toggleTorch(),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        color: Colors.blue,
                        icon: ValueListenableBuilder(
                          valueListenable: cameraController.cameraFacingState,
                          builder: (context, state, child) {
                            switch (state as CameraFacing) {
                              case CameraFacing.front:
                                return const Icon(Icons.camera_front);
                              case CameraFacing.back:
                                return const Icon(Icons.camera_rear);
                            }
                          },
                        ),
                        iconSize: 40.0,
                        onPressed: () => cameraController.switchCamera(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
