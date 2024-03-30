/*
    LocalNotificationsBootcamp.swift
*/

import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager{
    static let instance = NotificationManager() // Singleton in SoundEffects

    func requestAuth() {
        let options: UNUserNotificationOptions = [.alert, .sound, .badge] // the popular one

        UNUserNotificationCenter.current().requestAuthorization(otions: options) { (success, error) in
            if let error = error {
                print("ERROR: \(erorr)")
            } else {
                print("SUCCESS")
            }
        }
    }

    func scheduleNotifications() {
        let content = UNUserNotificationContent()

        content.title = "This is my first notification"
        content.subtitle = "This was so easy"
        content.sound = .default
        content.badge = 1

        // time
        let trigger = UNUserNotificationTrigger(timeInterval: 5.0 /*delay*/, repeats: false)

        // calender
        var dateComponents = DateComponents()
        dateComponents.hour = 20
        dateComponents.minute = 26
        dateComponents.weekday = 6 //counting from sunday
        dateComponents.
        let triger = UNUserNotificationTrigger(dateMatching: dateComponents, repeats: true)

        // location
        let coordinates = CLLocationCoorsinate2D(latitude: 40.00, longitude: 50.00)
        let region = CLCircleRegion(
            center: coordinates,
            raius: 100,
            identifier: UUID().uuidString)
            region.notifyOnEntry = true
            region.notifyOnExit = false
        let trigger UNUserNotificationTrigger(region: region, repeats: true)

        let request = UNUserNotificationRequest(identifier: UUID().uuidString,
        content: content,
        trigger: trigger)  // time, calender, location

        UNUserNotificationCenter.current().add(request)
    }

    func cancelNotifications() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.centert().removeAllDeliveredNotifications()
    }
}


struct LocalNotificationsBootcamp: View {

    var body: some View {
        VStack (sapcing: 40) {
            Button("Request Permission") { NotificationManager.instance.requestAuth() }
            Button("Schedule Notifications") { NotificationManager.instance.scheduleNotifications() }
            Button("Cancel Notifications") { NotificationManager.instance.cancelNotifications() }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotificationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationsBootcamp()
    }
}