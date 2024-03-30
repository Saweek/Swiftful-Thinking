/*
    HapticBootcamp.swift
*/

import SwiftUI

class HapticManager {
    static let instance = HapticManager()

    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }

    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator = impactOccurred()
    }
}


struct HapticBootcamp: View {

    var body: some View {
        VStack(spacing: 20)
        {
            Button("success") { Haptic.instance.notification(type: .success) }
            Button("warning") { Haptic.instance.notification(type: .warning) }
            Button("error") { Haptic.instance.notification(type: .error) }
            Devider()
            Button("soft") { Haptic.instance.impact(style: .soft) }
            Button("light") { Haptic.instance.impact(style: .light) }
            Button("medium") { Haptic.instance.impact(style: .medium) }
            Button("rigit") { Haptic.instance.impact(style: .rigit) }
            Button("heavy") { Haptic.instance.impact(style: .heavy) }
        }
    }
}

struct HapticBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HapticBootcamp()
    }
}