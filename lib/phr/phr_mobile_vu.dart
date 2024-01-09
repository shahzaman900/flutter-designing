import 'package:charms/phr/phr.vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class PhrMobileVU extends StackedView<PhrVM> {
  const PhrMobileVU({super.key});


  @override
  Widget builder(BuildContext context, PhrVM viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
    );
  }

  @override
  PhrVM viewModelBuilder(BuildContext context) {
    return PhrVM();
  }
}
