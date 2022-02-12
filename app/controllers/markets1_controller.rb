class Markets1Controller < ApplicationController
    def index
      @markets1 = [
        {
        #  "活動": "❗請自行注意登記時間\\n❗請自行注意兌換遊戲規則",
          "名稱": "不限金額下單抽\\n🅰️02/08-02/28\\nmomo-迎春特典-下單抽FUJI愛騎機",
        #  "連結名稱": "下單抽FUJI愛騎機",
        #  "連結": "https://momo.dm/R7YqRI",
        #  "圖片": "https://img1.momoshop.com.tw/ecm/img/cmm/fb-image-share.jpg",
        },
        {
        #    "活動": "❗請自行注意登記時間\\n❗請自行注意兌換遊戲規則",
            "名稱": "不限金額下單抽\\n🅱️02/07-02/10\\n下單抽平板電腦 - momo購物網",
        #    "連結名稱": "下單抽平板電腦",
        #    "連結": "https://momo.dm/YZNbUb",
        #    "圖片": "https://img1.momoshop.com.tw/ecm/img/cmm/fb-image-share.jpg",
        },
        {
        #    "活動": "❗請自行注意登記時間\\n❗請自行注意兌換遊戲規則",
            "名稱": "2/8-2/28 每週五、六\\n單日消費累積滿$3,000即可玩輪盤一次\\n20:00開放登記，每日限量600份\\nmomo-迎春特典-滿額抽哈根達斯",
        #    "連結名稱": "滿額抽哈根達斯",
        #   "連結": "https://momo.dm/iQZQUQ",
        #    "圖片": "https://img1.momoshop.com.tw/ecm/img/cmm/fb-image-share.jpg",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets1.filter! do |market|
            market[:名稱].include? @keyword
      end
    end
    @markets1 = @markets1.first(12)
  end
end