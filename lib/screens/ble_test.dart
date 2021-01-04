import 'package:cockoo_clock/services/ble_service.dart';
import 'package:flutter/material.dart';

class BleTest extends StatelessWidget {
  BleTest() {
    BleService().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLE Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                BleService().scanDevices();
              },
              child: Text('Scan BLE Devices'),
            ),
            RaisedButton(
              onPressed: () {
                BleService().manager.stopPeripheralScan();
              },
              child: Text('Stop BLE Scan'),
            ),
            RaisedButton(
              onPressed: () {
                BleService().connect();
              },
              child: Text('Connect to host'),
            ),
            RaisedButton(
              onPressed: () {
                BleService().checkServices();
              },
              child: Text('check services'),
            ),
            RaisedButton(
              onPressed: () {
                BleService().writeCharacteristic();
              },
              child: Text('write characteristic'),
            ),
          ],
        ),
      ),
    );
  }
}
