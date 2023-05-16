import 'package:get/get.dart';

class TermsAndPoliciesListController extends GetxController {

  static TermsAndPoliciesListController get to => Get.find();

  List<String> termTitle = [
    "[필수] 서비스 이용약관 동의",
    "[필수] 개인정보 수집 및 이용약관 동의",
    "[필수] 보안 및 데이터 활용 동의",
    "[선택] 위치기반 서비스 이용약관 동의",
    "[선택] 마케팅 정보 수신 및 활용 동의"
  ];


  // final _repo = DiagnosisRepo();
  //
  // final RxList<DiagnosisQuestion> _questionList = RxList<DiagnosisQuestion>();
  //
  // List<DiagnosisQuestion> get questionList => _questionList;


  // Future get getStartDiagnosisDetails async{
  //   //진단 항목들을 가져옴
  //   try{
  //     final Response res = await _repo.getStartDiagnosisCategoryDetails(diagnosisId);
  //     switch(res.statusCode){
  //       case 200:
  //         List<DiagnosisQuestion> questionList = List.from(res.body['data']).map((question) => DiagnosisQuestion.fromJson(question)).toList();
  //         _questionList.addAll(questionList);
  //     }
  //   } catch(error){
  //     throw Exception(error);
  //   }
  // }


}
