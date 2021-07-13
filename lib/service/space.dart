import 'package:alexander/service/base/client.dart';
import 'package:alexander/service/base/model/error.dart';
import 'package:alexander/service/base/model/result.dart';
import 'package:alexander/service/model/space.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final spaceProvider = Provider((ref) => Space(ref.read));

class Space {
  late final Dio client;

  Space(Reader reader) {
    client = reader(clientProvider);
  }

  /// スペースを作成を通知
  Future<Result<SetSpaceResponse>> setSpace(
      SetSpaceRequest setSpaceRequest) async {
    try {
      return await client
          .post(
            '/api/setSpace',
            data: setSpaceRequest.toJson(),
          )
          .then((result) =>
              Result.success(SetSpaceResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
