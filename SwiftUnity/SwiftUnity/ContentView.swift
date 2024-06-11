//
//  ContentView.swift
//  SwiftUnity
//
//  Created by 홍승표 on 6/10/24.
//

import SwiftUI

struct HostingWindowFinder: UIViewRepresentable {
    var callback: (UIWindow?) -> ()
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            [weak view] in
            self.callback(view?.window)
        }
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                UnityManager.shared.show()
            } label: {
                Text("Start Unity")
            }
        }
        .padding()
        .background(
            HostingWindowFinder { window in
                UnityManager.shared.setHostMainWindow(window)
            }
        )
    }
}

#Preview {
    ContentView()
}
