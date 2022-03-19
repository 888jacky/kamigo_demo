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
          "圖片": "https://live.staticflickr.com/65535/51947325110_537be60307_c.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "現剝火燒蝦仁",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51945736327_ffc38b189b_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "澎湖小卷\n七股瀉湖蚵仔\n蛤蜊",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947031084_f1dbcf3b5b_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "現殺龍膽石班",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947031034_a4854ca2f5_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "澎湖現釣土魠魚",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946791708_4f5956c257_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "空運挪威鮭魚",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947031004_3fec986541_b.jpg",
          "攤商": "阿聰澎湖深海魚(32)",
          "服務": "本產白昌魚",
          "電話": "手機0937309296電話06-3311033",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947030974_edc2041a72_c.jpg",
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