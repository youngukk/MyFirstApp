//
//  MyWep.swift
//  FirstApp
//
//  Created by admin on 2021/10/20.
//

import SwiftUI
import WebKit


//UIkit dml uiview 를 사용할수 있도록 한다
struct MyWepview: UIViewRepresentable {
	
	
	
	var urlToLoad: String
	
	// ui view 만들기
	func makeUIView(context: Context) -> some WKWebView {
		
		
		// unwrapping
		guard let url = URL(string: self.urlToLoad) else{
			return WKWebView()
		}
		
		// 웹뷰 인스턴스 생성
		let webview = WKWebView()
		
		//웹뷰를 로드한다.
		webview.load(URLRequest(url: url))
		
		return webview
	}
	
	// 업데이트  ui view
	func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWepview>) {
		
	}
	
}

struct MyWep_Previews: PreviewProvider {
		static var previews: some View {
			MyWepview(urlToLoad: "Https://www.google.com")
		}
}
