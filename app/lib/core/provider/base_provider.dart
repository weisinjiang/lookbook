import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Base Provider that contains loading and error states
/// Each set and clear has a notfy option to determine if 
/// listeners need to be notified. True by default 
class BaseProvider extends ChangeNotifier {
  bool loading = false;
  bool error = false;

  bool get isLoading => loading;
  bool get hasError => error;

  void setLoading({bool notify = true}) {
    loading = true;
    notifyListeners();
  }

  void unSetLoading({bool notify = true}) {
    loading = false;
    if (notify) {
      notifyListeners();
    }
  }

  void setError({bool notify = true}) {
    error = true;
    if (notify) {
      notifyListeners();
    }
  }

  void unSetError({bool notify = true}) {
    error = false;
    if (notify) {
      notifyListeners();
    }
  }

}