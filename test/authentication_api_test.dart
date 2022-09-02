import 'package:test/test.dart';
import 'package:mobileid_api/mobileid_api.dart';


/// tests for AuthenticationApi
void main() {
  final instance = MobileidApi().getAuthenticationApi();

  group(AuthenticationApi, () {
    // Start authentication flow for subject
    //
    // none
    //
    //Future<AuthenticationResponse> authenticate(AuthenticationRequest authenticationRequest) async
    test('test authenticate', () async {
      // TODO
    });

    // Checks if the authenticating app has published a response yet
    //
    // none
    //
    //Future<CheckAuthenticationResponse> check(CheckAuthenticationRequest checkAuthenticationRequest) async
    test('test check', () async {
      // TODO
    });

  });
}
