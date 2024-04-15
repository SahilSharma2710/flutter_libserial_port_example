import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';

class InitUsb extends StatefulWidget {
  const InitUsb({super.key});

  @override
  State<InitUsb> createState() => _InitUsbState();
}

class _InitUsbState extends State<InitUsb> {
  var availablePorts = [];
  late SerialPort port;

  @override
  void initState() {
    super.initState();
    initPorts();
  }

  void initPorts() {
    setState(() => availablePorts = SerialPort.availablePorts);
    print(availablePorts);
    port = SerialPort("/dev/cu.wlan-debug");
    port.openReadWrite();
    print(port.isOpen);
    // SerialPortReader reader = SerialPortReader(port, timeout: 10000);
    // Stream<Uint8List> upcommingData = reader.stream.map((data) {
    //   print(data);
    //   return data;
    // });

    // upcommingData.listen((data) {
    //   debugPrint('Raw data: $data');
    // });
    // final config = SerialPortConfig();
    // config.baudRate = 9600;
    // port.config = config;
    // port.config = SerialPortConfig()
    //   ..baudRate = 9600
    //   ..bits = 8
    //   ..stopBits = 1
    //   ..parity = SerialPortParity.none
    //   ..rts = SerialPortRts.flowControl
    //   ..cts = SerialPortCts.flowControl
    //   ..dsr = SerialPortDsr.flowControl
    //   ..dtr = SerialPortDtr.flowControl
    //   ..setFlowControl(SerialPortFlowControl.rtsCts);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
