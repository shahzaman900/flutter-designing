import 'package:charms/phr/phr.vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:local_pub/local_pub.dart';
import 'package:stacked/stacked.dart';

class PhrLaptopVU extends StackedView<PhrVM> {
  const PhrLaptopVU({super.key});

  @override
  Widget builder(BuildContext context, PhrVM viewModel, Widget? child) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: viewModel.isHeaderExpanded
                    ? context.kHeight / 5.2
                    : context.kHeight / 14,
                child: ExpansionTile(
                  title: const Text('Expansion'),
                  backgroundColor: Colors.green,
                  onExpansionChanged: viewModel.onHeaderExpansion,
                  children: const [
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                  ],
                ),
              ),
            ),
            12.spaceX,
            Expanded(
              flex: 3,
              child: Container(
                  height: viewModel.isHeaderExpanded
                      ? context.kHeight / 5.2
                      : context.kHeight / 14,
                  color: Colors.blueGrey,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      VerticalDivider(width: 1, color: Colors.white),
                      VerticalDivider(width: 1, color: Colors.white),
                      VerticalDivider(width: 1, color: Colors.white),
                      SizedBox(),
                    ],
                  )),
            ),
          ],
        )
      ],
    ));
  }

  @override
  PhrVM viewModelBuilder(BuildContext context) {
    return PhrVM();
  }
}
