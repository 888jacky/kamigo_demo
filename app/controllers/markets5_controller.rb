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