
import 'package:get/get.dart';

import '../data_services/api_helper.dart';
import '../data_services/api_type_enum.dart';
import '../helper/error_handler.dart';
import '../utils/api_end_points.dart';

class AuthRepository {
final ApiHelper _apiHelper = Get.find();

Future<dynamic> loginApi(dynamic body)async{


  var data = await errorHandler(
      _apiHelper.multiMethod(
        baseUrl,
        appConfig,
        body: body,
        methodType: ApiTypeEnum.post,
      )
  );

  if(data==null)return null;
  // var regData=  modelErrorHandler((){
  //   return  LoginModel.fromJson(data);
  // });
  //return regData;
  ///api reponse will retrun from data and check data is null or not and load data to model with help of modelErrorHandler which will show toast if model is failed to load
  ///you can get error json to on data you have to pass isShowError,needReturn on errorHandler both is bool  is isShowError default is true and needReturn is false which means its will show toast which will get from api
  ///and dont have error json if you need error json just pass isShowError = true
}

}
