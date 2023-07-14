import 'package:dba_mobile/src/core/router/router.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;
var appRoute = GetIt.instance<AppRouter>();

inilizeLocator (){
    getIt.registerSingleton<AppRouter>(AppRouter());
}