class Markets11Controller < ApplicationController
    def index
      @markets11 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51885873772_9f3e960e88_z.jpg",
          "攤商": "薪泉雜貨行(25)",
          "服務": "各式沾醬、調味料、雜貨及火鍋料、南北雜貨、進口油",
          "電話": "手機0975298761電話06-3318293",
        },
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3337/1622515618_1.jpg",
          "攤商": "薪泉雜貨行(25)",
          "服務": "各式沾醬、調味料、雜貨及火鍋料、南北雜貨、進口油",
          "電話": "手機0975298761電話06-3318293",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887493560_84f08b89cc_b.jpg",
          "攤商": "薪泉雜貨行(25)",
          "服務": "各式沾醬、調味料、雜貨及火鍋料、南北雜貨、進口油",
          "電話": "手機0975298761電話06-3318293",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets11.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets11 = @markets11.first(12)
  end
end