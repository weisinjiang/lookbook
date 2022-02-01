import 'package:app/core/provider/base_provider.dart';
import 'package:app/core/service_locator/locator.dart';
import 'package:app/lookbook/models/LookbookImage.dart';
import 'package:photo_repo/photo_repo.dart';

class LookbookProvider extends BaseProvider {
  final PhotoRepo _photoRepo = getItLocator<PhotoRepo>();
  final List<LookbookImage> imageList = [];
  LookbookProvider();


}