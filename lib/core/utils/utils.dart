import 'dart:io';

import 'package:feedify/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static Widget loadingIndicator({Color? color}) => SizedBox(
        height: medium,
        width: medium,
        child: Platform.isIOS
            ? CircularProgressIndicator(
                color: color ?? Colors.white,
              )
            : CupertinoActivityIndicator(
                color: color ?? Colors.white,
              ),
      );
}
