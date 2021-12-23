import 'package:flutter/material.dart';

hpush(context, Widget page) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
