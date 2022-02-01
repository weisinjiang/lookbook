import 'package:get_it/get_it.dart';
import 'package:photo_repo/photo_repo.dart';

final getItLocator = GetIt.instance;

Future<void> setupLocator() async {
  getItLocator.registerSingleton<PhotoRepo>(PhotoRepo());
  
}
