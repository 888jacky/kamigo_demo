Rails.application.routes.draw do
  # 首頁
  root to: "home#index"
  get "index", to: "home#index"

  # LINE Login 登入
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }

  # 加入好友時的自我介紹訊息
  get "follow", to: "home#follow"

  # 加入群組時的自我介紹訊息
  get "join", to: "home#follow"

  # 有人加入群組時的歡迎訊息
  get "memberJoined", to: "home#member_join"

  # todo
  resources :todos

  # menu
  get "menu", to: "home#menu"
  get "攤商查詢", to: "home#mark0"
  get "水果", to: "home#mark1"
  get "蔬菜", to: "home#mark2"
  get "魚肉", to: "home#mark3"
  get "雞肉", to: "home#mark4"
  get "豬肉1", to: "home#mark5"
  get "雜貨行", to: "home#mark6"
  get "早點", to: "home#mark7"
  get "魚丸", to: "home#mark8"
  get "水餃", to: "home#mark9"
  get "女裝", to: "home#mark10"

  get "阿忠水果行", to: "markets1#index"
  get "阿樹水果", to: "markets2#index"
  get "阿城蔬菜", to: "markets3#index"
  get "阿惠蔬菜", to: "markets4#index"
  get "阿聰澎湖", to: "markets5#index"
#  get "阿德魚攤", to: "markets6#index"
  get "玉井", to: "markets7#index"
  get "永發", to: "markets8#index"




  # 查天氣
#  get "(*location)天氣(*other)", to: "weather#show"

  # 學說話
#  get "學 (*keyword) (*message)", to: 'home#learn'

  # 測試用
#  get "test", to: "home#test"
#  get "debug", to: "home#debug"

  # 查詢當下的使用者
  get "profile", to: "home#profile"

  # flex message demo
#  get "flex", to: "flex#index"
#  get "flex/bubble_size_tests/:size", to: "flex#bubble_size_tests"
#  get "flex/apng_test", to: "flex#apng_test"
#  get "flex/500_buttons_demo", to: "flex#500_buttons_demo"

  # LINE Flex Message Show Cases
  get "flex/showcases", to: "flex_showcases#index"
  get "flex/showcases/restaurant", to: "flex_showcases#restaurant"
  get "flex/showcases/apparel", to: "flex_showcases#apparel"
  get "flex/showcases/hotel", to: "flex_showcases#hotel"
  get "flex/showcases/local_search", to: "flex_showcases#local_search"
  get "flex/showcases/real_estate", to: "flex_showcases#real_estate"
  get "flex/showcases/social", to: "flex_showcases#social"
  get "flex/showcases/todo_app", to: "flex_showcases#todo_app"
  get "flex/showcases/transit", to: "flex_showcases#transit"
  get "flex/showcases/receipt", to: "flex_showcases#receipt"
  get "flex/showcases/shopping", to: "flex_showcases#shopping"
  get "flex/showcases/menu", to: "flex_showcases#menu"
  get "flex/showcases/ticket", to: "flex_showcases#ticket"

  # LIFF 分享好友
  get "send_test_messages", to: "home#send_test_messages"
  get "share_bot", to: "home#share_bot"
  get "share_bot_flex", to: "home#share_bot_flex"
end
