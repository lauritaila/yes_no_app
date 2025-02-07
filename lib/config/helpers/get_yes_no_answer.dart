import 'package:yes_no_maybe_chat_provider/domain/entities/message.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    throw UnimplementedError();

  }

}