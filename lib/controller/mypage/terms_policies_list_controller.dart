import 'package:get/get.dart';

import '../../global_asset/common.dart';
import '../../model/terms_policies_list.dart';
import '../../repository/terms_policies_repository.dart';

class TermsPoliciesListController extends GetxController {
  RxBool isLoading = false.obs;
  TermsPolicies? termsPolicies;

  @override
  void onInit() async {
    super.onInit();
    await getTermsPoliciesInfo();
  }

  getTermsPoliciesInfo() async {
    if (!Get.isRegistered<TermsPoliciesRepository>()) {
      Get.put(TermsPoliciesRepository());
    }
    try {
      isLoading(true);
      termsPolicies = await TermsPoliciesRepository.to.getTermsPolicies();
      isLoading(false);
    } catch (e) {
      Common.showToast("사용자 정보 호출을 실패했습니다.");
    }
  }


}
