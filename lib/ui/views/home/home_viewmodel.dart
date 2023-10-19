import 'package:hello_flutter/app/app.locator.dart';
import 'package:hello_flutter/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void pressedArticleView() {
    _navigationService.navigateTo(
      Routes.articleView,
      transition: TransitionsBuilders.noTransition,
    );
    // _bottomSheetService.showCustomSheet(
    //   variant: BottomSheetType.notice,
    //   title: ksHomeBottomSheetTitle,
    //   description: ksHomeBottomSheetDescription,
    // );
  }
}
