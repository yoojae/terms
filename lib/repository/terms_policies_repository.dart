import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:orot/model/member.dart';
import 'package:orot/model/user_type_result.dart';

import '../global_asset/common.dart';
import '../model/mem_result.dart';
import '../model/member_result.dart';
import '../model/terms_policies_list.dart';

class TermsPoliciesRepository extends GetConnect {
  static TermsPoliciesRepository get to => Get.find();

  late Dio _dio;

  TermsPoliciesRepository() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseURL,
        connectTimeout: const Duration(seconds: 1),
      ),
    );
  }

  Future<TermsPolicies?> getTermsPolicies() async {
    TermsPolicies termspolicieslist = TermsPolicies();
    try {
      _dio.options.headers["Authorization"] = await Common.getToken();
      var response = await _dio.post('/term');
      termspolicieslist = TermsPolicies.fromJson(response.data);
    } on DioError catch (e) {
      termspolicieslist.id = e.response?.data["id"];
      termspolicieslist.name = e.response?.data["name"];
      termspolicieslist.content = e.response?.data["content"];
      termspolicieslist.isRequire = e.response?.data["isRequire"];
    }
    return termspolicieslist;

  }

}
