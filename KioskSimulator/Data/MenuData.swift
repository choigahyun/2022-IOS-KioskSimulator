//
//  MenuData.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/21.
//

struct MenuData {
    var menu_image: String!
    var menu: String!
    var price: Int!
    var hotice: String!
    var option: OptionData!
    
    init(_ menu_image: String, _ menu: String, _ price: Int, _ hotice: String, _ option: OptionData) { // 초기화
        self.menu_image = menu_image
        self.menu = menu
        self.price = price
        self.hotice = hotice
        self.option = option
    }
}

struct OptionData {
    var type: Int!
    var hotice_option: String!
    var ice_type_option: String!
    var ice_amount_option: String!
    var sugar_level_option: String!
    var half_shot_option: String!
    var whip_option: String!
    var vanila_syrup_option: String!
    var hazelnut_syrup_option: String!
    var shot_add_option: Int!
    var pearl_option: Int!
    
    init(_ type: Int, _ hotice_option: String, _ ice_type_option: String,_ ice_amount_option: String, _ sugar_level_option: String, _ half_shot_option: String, _ whip_option: String, _ vanila_syrup_option: String, _ hazelnut_syrup_option: String, _ shot_add_option: Int, pearl_option: Int) { // 초기화
        self.type = type
        self.hotice_option = hotice_option // default "ICE" -1이면 선택 불가능 ; ICE ONLY
        self.ice_type_option = ice_type_option // default "간얼음", -1이면 선택 불가능
        self.ice_amount_option = ice_amount_option // default "기본", -1이면 선택 불가능
        self.sugar_level_option = sugar_level_option // default "기본", -1이면 선택 불가능
        self.half_shot_option = half_shot_option // default "기본", -1이면 선택 불가능
        self.whip_option = whip_option // default "-1" 선택 불가능
        self.vanila_syrup_option = vanila_syrup_option // default "기본", -1이면 선택 불가능
        self.hazelnut_syrup_option = hazelnut_syrup_option // default "기본", -1이면 선택 불가능
        self.shot_add_option = shot_add_option // default 0, -1이면 선택 불가능
        self.pearl_option = pearl_option // default 0
    }
}

var coffee_option_basic = OptionData(1, "ICE", "간얼음", "기본", "기본", "기본", "-1","기본", "기본", 0, pearl_option: 0) // ex. 아메리카노, 콜드브루
var coffee_option_whip = OptionData(2, "ICE", "간얼음", "기본", "기본", "기본", "휘핑 있음", "기본", "기본", 0, pearl_option: 0) // ex. 카페모카

var noncoffee_option_basic = OptionData(3, "ICE", "간얼음", "기본", "기본", "-1", "-1", "-1", "-1", -1, pearl_option: 0) // ex. 주스, 에이드, 초코라떼

var iceblended_option_basic = OptionData(4, "-1", "-1", "-1", "기본", "-1", "-1", "-1", "-1", -1, pearl_option: 0) // ex. 젤라또 프라페노, 요거트 프라페노
var iceblended_option_whip = OptionData(5, "-1", "-1", "-1", "기본", "-1", "휘핑 있음", "-1", "-1", 0, pearl_option: 0) // ex. 초코칩 프라페노, 콜드브루 프라페노

var tea_option_hot = OptionData(6, "HOT", "간얼음", "기본", "기본", "-1", "-1", "-1", "-1", -1, pearl_option: 0)
var tea_option_ice = OptionData(7, "ICE", "간얼음", "기본", "기본", "-1", "-1", "-1", "-1", -1, pearl_option: 0)

var desert_option = OptionData(8, "-1", "-1", "-1", "-1", "-1", "-1", "-1", "-1", -1, pearl_option: -1)


var seasonMenuData = [
    MenuData("season_01", "제주한라봉 리얼요거트 프라페", 4500, "ICE ONLY", iceblended_option_basic),
    MenuData("season_02", "제주한라봉 자몽 젤라또 에이드", 3800, "ICE ONLY", noncoffee_option_basic),
    MenuData("season_03", "제주한라봉 젤라또 에이드", 3800, "ICE ONLY", noncoffee_option_basic)
]

var coffeeMenuData = [
    MenuData("coffee_01", "아메리카노", 2000, "HOT/ICE", coffee_option_basic),
    MenuData("coffee_02", "카페라떼", 2500, "HOT/ICE", coffee_option_basic),
    MenuData("coffee_03", "바닐라라떼", 3000, "HOT/ICE", coffee_option_basic),
    MenuData("coffee_04", "헤이즐넛라떼", 3000, "HOT/ICE", coffee_option_basic),
    MenuData("coffee_05", "카라멜 마끼아또", 3000, "HOT/ICE", coffee_option_basic),
    MenuData("coffee_06", "카페모카", 3000, "HOT/ICE", coffee_option_whip),
    MenuData("coffee_07", "아인슈페너", 4300, "HOT/ICE", coffee_option_basic),
    
    MenuData("coffee_08", "콜드브루", 3000, "ICE ONLY", coffee_option_basic),
    MenuData("coffee_09", "콜드브루 라떼", 3800, "ICE ONLY", coffee_option_basic),
    MenuData("coffee_10", "콜드브루 바닐라 아이스크림 라떼", 4800, "ICE ONLY", coffee_option_basic),
    MenuData("coffee_11", "콜드브루 헤이즐넛 라떼", 4200, "ICE ONLY", coffee_option_basic),
    MenuData("coffee_12", "콜드브루 카라멜 마끼아또", 4200, "ICE ONLY", coffee_option_basic)
]

var noncoffeeMenuData = [
    MenuData("noncoffee_01", "초콜릿 라떼", 3500, "HOT/ICE", noncoffee_option_basic),
    MenuData("noncoffee_02", "그린티 라떼", 3500, "HOT/ICE", noncoffee_option_basic),
    MenuData("noncoffee_03", "오곡 라떼", 3500, "HOT/ICE", noncoffee_option_basic),
    MenuData("noncoffee_04", "고구마 라떼", 3500, "HOT/ICE", noncoffee_option_basic),
    MenuData("noncoffee_05", "피스타치오 라떼", 3500, "HOT/ICE", noncoffee_option_basic),
    
    MenuData("noncoffee_06", "오렌지 주스", 4200, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_07", "자몽 주스", 4200, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_08", "키위 주스", 4200, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_09", "홍시 주스", 4200, "ICE ONLY", noncoffee_option_basic),
    
    MenuData("noncoffee_10", "자몽 히비스커스 티 에이드", 3500, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_11", "레몬 에이드", 3500, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_12", "자몽 에이드", 3500, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_13", "청포도 에이드", 3500, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_14", "자두 에이드", 3500, "ICE ONLY", noncoffee_option_basic),
    
    MenuData("noncoffee_15", "얼그레이 밀크티 라떼", 3500, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_16", "밀크티 버블 라떼", 4200, "ICE ONLY", noncoffee_option_basic),
    MenuData("noncoffee_17", "타로 버블 라떼", 4200, "ICE ONLY", noncoffee_option_basic)
]

var iceblendedMenuData = [
    MenuData("iceblended_01", "초코칩 프라페노", 4800, "ICE ONLY", iceblended_option_whip),
    MenuData("iceblended_02", "그린티 프라페노", 4800, "ICE ONLY", iceblended_option_whip),
    
    MenuData("iceblended_03", "초콜릿 쿠키 젤라또 프라페노", 5300, "ICE ONLY", iceblended_option_basic),
    MenuData("iceblended_04", "딸기 젤라또 프라페노", 5300, "ICE ONLY", iceblended_option_basic),
    MenuData("iceblended_05", "티라미수 젤라또 프라페노", 5300, "ICE ONLY", iceblended_option_basic),
    
    MenuData("iceblended_06", "콜드브루 오리지널 프라페노", 4800, "ICE ONLY", iceblended_option_whip),
    MenuData("iceblended_07", "콜드브루 카라멜 프라페노", 4800, "ICE ONLY", iceblended_option_whip),
    MenuData("iceblended_08", "콜드브루 모카 프라페노", 4800, "ICE ONLY", iceblended_option_whip),
    
    MenuData("iceblended_09", "플레인 리얼요거트 프라페노", 4800, "ICE ONLY", iceblended_option_basic),
    MenuData("iceblended_10", "딸기 리얼요거트 프라페노", 4800, "ICE ONLY", iceblended_option_basic),
    MenuData("iceblended_11", "블루베리 리얼요거트 프라페노", 4800, "ICE ONLY", iceblended_option_basic)
]

var teaMenuData = [
    MenuData("tea_01", "복숭아 아이스티", 3000, "ICE ONLY", noncoffee_option_basic),
    MenuData("tea_02", "유자 차", 3000, "HOT/ICE", tea_option_hot),
    MenuData("tea_03", "자몽 차", 3000, "HOT/ICE", tea_option_hot),
    MenuData("tea_04", "국화 차", 3000, "HOT/ICE", tea_option_hot),
    MenuData("tea_05", "감잎 차", 3000, "HOT/ICE", tea_option_hot),
    
    MenuData("tea_06", "페퍼민트 티", 3000, "HOT/ICE", tea_option_hot),
    MenuData("tea_07", "캐모마일 티", 4800, "HOT/ICE", tea_option_hot),
    MenuData("tea_08", "얼그레이 티", 3000, "HOT/ICE", tea_option_hot),
    MenuData("tea_09", "아쌈 티", 4800, "HOT/ICE", tea_option_hot),
    MenuData("tea_10", "애플 시나몬 티", 4200, "HOT/ICE", tea_option_ice),
    MenuData("tea_11", "유자 히비스커스 티", 4200, "HOT/ICE", tea_option_ice),
    MenuData("tea_12", "자몽 얼그레이 티", 4200, "HOT/ICE", tea_option_ice),
    MenuData("tea_13", "머스캣 블렌드 티", 3800, "HOT/ICE", tea_option_hot),
    MenuData("tea_14", "레몬 사과 블렌드 티", 3800, "HOT/ICE", tea_option_hot),
    MenuData("tea_15", "히비스커스 블렌드 티", 4800, "HOT/ICE", tea_option_hot)
]

var desertMenuData = [
    MenuData("desert_01", "플레인 크로플", 2800, "", desert_option),
    MenuData("desert_02", "카라멜 시나몬 크로플", 3300, "", desert_option),
    MenuData("desert_03", "젤라또 크로플", 3300, "", desert_option),
    MenuData("tea_04", "인절미 크로플", 3500, "", desert_option),
    MenuData("desert_05", "블루베리 크림치즈 크로플", 3500, "", desert_option),
    MenuData("desert_06", "쿠키앤크림 크로플", 3500, "", desert_option),
    
    MenuData("desert_07", "플레인 스콘", 2800, "", desert_option),
    MenuData("desert_08", "아몬드 달고나 스콘", 3200, "", desert_option),
    MenuData("desert_09", "진한 초코 쿠키", 2500, "", desert_option),
    MenuData("desert_10", "촉촉 크림치즈 쿠키", 2500, "", desert_option),
    MenuData("desert_11", "카라멜 시나몬 브레드", 5800, "", desert_option),
    
    MenuData("desert_12", "티라미수 케이크", 4500, "", desert_option),
    MenuData("desert_13", "쿠키앤크림 케이크", 4500, "", desert_option),
    MenuData("desert_14", "바스크 치즈 케이크", 4500, "", desert_option),
    MenuData("desert_15", "라운드 쇼콜라 케이크", 4800, "", desert_option),
    MenuData("desert_16", "당근 치즈 케이크", 4800, "", desert_option)
]
