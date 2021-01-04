import 'dart:typed_data';

import 'package:flutter_ble_lib/flutter_ble_lib.dart';

class BleService {
  static final BleService _singleton = BleService._internal();

  BleService._internal() {
    print('BleService: singleton instantiated.');
  }

  factory BleService() => _singleton;

  BleManager _manager;
  Peripheral _peripheral;

  BleManager get manager => _manager;

  Peripheral get peripheral {
    print(_peripheral.name);
    return _peripheral;
  }

  void init() async {
    _manager = BleManager();
    await _manager.createClient();
  }

  void scanDevices() {
    _manager.startPeripheralScan().listen((ScanResult result) {
      print("Device: ${result.peripheral.name}, RSSI ${result.rssi}");
      if (result.peripheral.name == 'H.B.的MacBook Pro') {
        _manager.stopPeripheralScan();
        _peripheral = result.peripheral;
      }
    });
  }

  void connect() async {
    await _peripheral.connect();
    bool connected = await _peripheral.isConnected();
    print('${_peripheral.name} connected: $connected');
  }

  void checkServices() async {
    List<Service> services = await peripheral.services();
    for (Service s in services) {
      print(s.uuid);
      List<Characteristic> characteristics1 =
          await peripheral.characteristics(s.uuid);
      for (Characteristic c in characteristics1) {
        print(c.service);
      }
    }
  }

  void writeCharacteristic() async {
    _peripheral.writeCharacteristic(
      "H.B.的MacBook Pro",
      "F000AA02-0451-4000-B000-000000000000",
      Uint8List.fromList([0]),
      false,
    );
  }
}
