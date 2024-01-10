import 'package:charms/phr/phr.vm.dart';
import 'package:charms/phr/phr_laptop.dart';
import 'package:charms/phr/phr_mobile_vu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:local_pub/local_pub.dart';
import 'package:stacked/stacked.dart';

class PhrVU extends StackedView<PhrVM> {
  const PhrVU({super.key});

  @override
  Widget builder(BuildContext context, PhrVM viewModel, Widget? child) {
    return Scaffold(
      appBar: context.isMobile
          ? AppBar(
              title: const Text('data'),
            )
          : null,
      body: CHIResponsiveView(
          mobile: const PhrMobileVU(),
          webSmall: const PhrMobileVU(),
          medium: PhrLaptopVU(),
          large: PhrLaptopVU()),
    );
  }

  @override
  PhrVM viewModelBuilder(BuildContext context) {
    return PhrVM();
  }
}
