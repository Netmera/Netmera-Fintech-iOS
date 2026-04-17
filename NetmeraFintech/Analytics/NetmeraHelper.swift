//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import NetmeraAdvertisingId
import NetmeraAnalytic
import NetmeraCore
import NetmeraLocation
import NetmeraNotification
import NetmeraNotificationInbox

class NetmeraHelper {
    // Request push notification authorization from user by calling the following method in an appropriate place:
    public static func requestNotificationPermission() {
        Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
    }

    // Request location permission
    public static func requestLocationPermission() {
        Netmera.requestLocationAuthorization()
    }

    public static func requestAdIdPermission() {
        Netmera.requestAdvertisingAuthorization()
    }

    public static func enableAdId() {
        Netmera.setAuthorizedAdvertisingIdentifier(authorized: true)
    }

    public static func enablePopups() {
        Netmera.setEnabledPopupPresentation(true)
    }

    public static func enableInAppMessages() {
        Netmera.setEnabledInAppMessagePresentation(true)
    }
}
