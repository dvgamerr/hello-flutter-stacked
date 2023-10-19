import 'package:hello_flutter/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ArticleViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void pressedBack() {
    _navigationService.back();
    // _bottomSheetService.showCustomSheet(
    //   variant: BottomSheetType.notice,
    //   title: ksHomeBottomSheetTitle,
    //   description: ksHomeBottomSheetDescription,
    // );
  }
}
