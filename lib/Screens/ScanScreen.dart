import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:audioplayers/audio_cache.dart';

class ScanScreen extends StatefulWidget {
  static String id = 'ScanScreen';

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  ConfettiController _confettiController;
  String _code = "0";
  String _value = "";

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: Duration(
        seconds: 2,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _confettiController.dispose();
  }

  Future _barcodeScanner() async {
    _code = await FlutterBarcodeScanner.scanBarcode(
        '#004297', 'Delete', true, ScanMode.DEFAULT);

    setState(() {
      _value = _code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Please scan the QR code',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                _code == "0" || _code == "-1"
                    ? Image(
                        image: AssetImage('assets/img/qr.png'),
                        height: 50.0,
                      )
                    : Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 12.0),
                        child: Text(
                          _code,
                          style: TextStyle(),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                SizedBox(
                  height: 20.0,
                ),
                Image(
                  image: AssetImage(
                    'assets/img/recycle.png',
                  ),
                  height: 350,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () async {
                        _confettiController.play();

                        AudioCache audioPlayer = AudioCache(
                          prefix: 'assets/audio/',
                        );
                        await audioPlayer.play(
                          'cheering.wav',
                        );
                      },
                      child: Text(
                        'Insert',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.green,
                    ),
                    RaisedButton(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: _barcodeScanner,
                      child: Text(
                        'Scan',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xff006462),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirection: 190,
              emissionFrequency: 0.1,
              numberOfParticles: 50,
              shouldLoop: false,
            ),
          ),
        ],
      ),
    );
  }
}
