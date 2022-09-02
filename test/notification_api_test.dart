import 'package:test/test.dart';
import 'package:mobileid_api/mobileid_api.dart';


/// tests for NotificationApi
void main() {
  final instance = MobileidApi().getNotificationApi();

  group(NotificationApi, () {
    // Retrieves a notification
    //
    // none
    //
    //Future<SignInNotification> getNotification(NotificationRetrievalRequest notificationRetrievalRequest) async
    test('test getNotification', () async {
      // TODO
    });

    // List all notifications for the user
    //
    // none
    //
    //Future<NotificationListResponse> listNotifications() async
    test('test listNotifications', () async {
      // TODO
    });

    // Responds to a notification
    //
    // Confirms or denies the action contained in the notification
    //
    //Future<NotificationConfirmationResponse> putNotificationResponse(NotificationConfirmationRequest notificationConfirmationRequest) async
    test('test putNotificationResponse', () async {
      // TODO
    });

  });
}
