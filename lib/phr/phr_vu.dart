import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phr/phr/phr.vm.dart';
import 'package:stacked/stacked.dart';

class PhrVU extends StackedView {
  const PhrVU({super.key});

  @override
  Widget builder(
      BuildContext context, ChangeNotifier viewModel, Widget? child) {
    return const Scaffold(
      body: Text('sdasd'),
    );
  }

  @override
  ChangeNotifier viewModelBuilder(BuildContext context) {
    return PhrVM();
  }
}
