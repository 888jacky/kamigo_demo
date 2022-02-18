class Markets5Controller < ApplicationController
    def index
      @markets5 = [
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3330/1622515136_3.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "各式生鮮魚貨",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877564700_b8f8b702e6_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "各式生鮮魚貨",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887932687_fa59d2469e_c.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "現剝火燒蝦仁",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51888981553_9dfa3bcdd1_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "澎湖小卷\n七股瀉湖蚵仔\n蛤蜊",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51888894371_6d1b2c5cdc_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "現殺龍膽石班",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887932717_98bc1b9879_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "澎湖現釣土魠魚",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51889228079_77ee406fb2_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "空運挪威鮭魚",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887932697_1068ec06b5_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "本產白昌魚",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887932672_7c6fc8c61a_c.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "肉魚",
          "電話": "手機0937309296電話06-3311033",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets5.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets5 = @markets5.first(12)
  end
end