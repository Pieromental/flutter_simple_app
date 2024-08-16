import 'package:basic_flutter_app/chat_project/domain/entities/message.dart';
import 'package:dio/dio.dart';

import '../infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel= YesNoModel.fromJson(response.data);
    return yesNoModel.toMessageEntity();
  }
}
