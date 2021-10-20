//
//  ContentView.swift
//  FirstApp
//
//  Created by admin on 2021/10/17.
//

import SwiftUI
import WebKit

struct ContentView: View {
	
	//@State 값의 변화를 감지 -> 뷰에 적용
	@State
	private var isActivated: Bool = false
	
	//몸체
    var body: some View {
						
			NavigationView{
				VStack{
					HStack{
						
						MyVstackView()
						MyVstackView()
						MyVstackView()
						
					} // Hstack
					
					.padding(isActivated ? 10 : 50)
					//
					.background(isActivated ? Color.blue : Color.black)
					// 탭 제스쳐 추가
					.onTapGesture {
						print("Hstack이 클릭되었다.")
						
						
						// 애니매이션 추가
						withAnimation {
							// toggle() 트루이면 폴스로 폴스면 트루로 변경
							self.isActivated.toggle()
						}
						
					}//Hstack
					
					//네비게이션 버튼(링크)
					NavigationLink(destination: MyTextView() ){
							Text("네비게이션")
								.fontWeight(.heavy)
								.font(.system(size: 40))
								.background(Color.yellow)
								.foregroundColor(Color.white)
								.cornerRadius(30)
					} .padding(.top, 50)
					
				}
			}
		}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
