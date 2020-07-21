import 'package:flutter_service/storage_service.dart';
import 'package:flutter_service/storage_service_fake.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  locator.registerLazySingleton<StorageService>(() => StorageServiceFake());
}
