//
//  TodayMenuStruct.swift
//  Haksik_HYU
//
//  Created by 최영우 on 2024. 2. 22..
//

import Foundation
import UIKit
import SwiftSoup

struct todayMenu {
    let menu : String
}

func searchTodayMenu() {
    let url = URL(string: "https://www.hanyang.ac.kr/web/www/re12") // 테이블뷰에 값 넘기기
    guard let myURL = url else {return}
    do {
        let html = try String(contentsOf: myURL, encoding: .utf8)
        let doc: Document = try SwiftSoup.parse(html)
        let menu1 = try! doc.select("#_foodView_WAR_foodportlet_tab_2 > div.box.tables-board-wrap > table > tbody > tr:nth-child(2) > td:nth-child(2) > ul > li:nth-child(1)")
        let menu2 = try! doc.select("#_foodView_WAR_foodportlet_tab_2 > div.box.tables-board-wrap > table > tbody > tr:nth-child(2) > td:nth-child(2) > ul > li:nth-child(2)")
        print(doc)
    }
    catch Exception.Error(type: let type, Message: let message) {
        print(type)
        print(message)
    } catch{
        print("")
    }
}
