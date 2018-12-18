import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

typedef void TestPlatformViewCreatedCallback();

class TestPlatformView extends StatefulWidget {

  const TestPlatformView({Key key, this.onTestViewCreated}) : super(key: key);

  final TestPlatformViewCreatedCallback onTestViewCreated;

  @override
  _TestPlatformViewState createState() => _TestPlatformViewState();
}

class _TestPlatformViewState extends State<TestPlatformView> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: "TestView",
        onPlatformViewCreated: _onViewCreated,
      );
    }else {
      return UiKitView(
        viewType: "TestView",
      );
    }
  }

  void _onViewCreated(int id){
    if (widget.onTestViewCreated == null){
      return;
    }
    widget.onTestViewCreated();
  }
}