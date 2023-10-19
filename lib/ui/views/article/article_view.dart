import 'package:flutter/material.dart';
import 'package:hello_flutter/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'article_viewmodel.dart';

class ArticleView extends StackedView<ArticleViewModel> {
  const ArticleView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ArticleViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    verticalSpaceMedium,
                    MaterialButton(
                      color: Colors.black,
                      onPressed: viewModel.pressedBack,
                      child: const Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     MaterialButton(
                //       color: kcDarkGreyColor,
                //       onPressed: viewModel.showDialog,
                //       child: const Text(
                //         'Show Dialog',
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     MaterialButton(
                //       color: kcDarkGreyColor,
                //       onPressed: viewModel.showBottomSheet,
                //       child: const Text(
                //         'Show Bottom Sheet',
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  ArticleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ArticleViewModel();
}
