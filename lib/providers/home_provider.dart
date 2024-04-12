import 'package:flutter/cupertino.dart';

import '../repository/home_repository.dart';
import 'my_notifier.dart';

class HomeProvider extends ChangeNotifier with MyNotifier {
  final HomeRepository _homeRepository = HomeRepository();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set setIsLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool _isError = false;

  bool get isError => _isError;

  set setIsError(bool value) {
    _isError = value;
    notifyListeners();
  }

  Future<dynamic> callLogin() async {
    setIsLoading = true;
    setIsError = false;
    var data = await _homeRepository.loginApi("{body}");

    if (data != null) {
    } else {
      setIsError = true;
    }

    setIsLoading = false;
  }
}
