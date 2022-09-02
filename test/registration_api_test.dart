import 'package:test/test.dart';
import 'package:mobileid_api/mobileid_api.dart';


/// tests for RegistrationApi
void main() {
  final instance = MobileidApi().getRegistrationApi();

  group(RegistrationApi, () {
    // Completes registration with challenge
    //
    // none
    //
    //Future<CompleteRegistrationResponse> completeRegister(CompleteRegistrationRequest completeRegistrationRequest) async
    test('test completeRegister', () async {
      // TODO
    });

    // Starts registration procedure
    //
    // none
    //
    //Future<StartRegistrationResponse> startRegister(StartRegistrationRequest startRegistrationRequest) async
    test('test startRegister', () async {
      // TODO
    });

  });
}
