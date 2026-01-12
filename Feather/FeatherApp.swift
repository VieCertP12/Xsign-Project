//
//  FeatherApp.swift
//  Feather
//  Modded by ThaiSoniOS - Luxury Edition
//

import SwiftUI

@main
struct FeatherApp: App {
    // Định nghĩa màu Vàng Luxury (Gold)
    let luxuryGold = Color(red: 212/255, green: 175/255, blue: 55/255) 

    init() {
        // Ép toàn bộ giao diện hệ thống sang màu Gold
        UIView.appearance().tintColor = UIColor(red: 212/255, green: 175/255, blue: 55/255, alpha: 1.0)
        
        // Chỉnh màu thanh Tabbar bên dưới thành đen mờ viền vàng
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.black
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(red: 212/255, green: 175/255, blue: 55/255, alpha: 1.0)
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(red: 212/255, green: 175/255, blue: 55/255, alpha: 1.0)]
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .accentColor(luxuryGold) // Nhuộm vàng toàn bộ nút
                .preferredColorScheme(.dark) // Ép nền Đen (Dark Mode) vĩnh viễn
                .overlay(
                    // Thêm dòng chữ bản quyền chìm ở góc dưới
                    VStack {
                        Spacer()
                        Text("Powered by Muachungchi.com")
                            .font(.caption2)
                            .foregroundColor(luxuryGold.opacity(0.6))
                            .padding(.bottom, 5)
                    }
                    .allowsHitTesting(false) // Không chặn cảm ứng
                )
        }
    }
}
