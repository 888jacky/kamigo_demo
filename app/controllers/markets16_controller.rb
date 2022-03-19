class Markets16Controller < ApplicationController
    def index
      @markets16 = [
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3327/1622515035_2.jpg",
          "攤商": "豆萌活力芽漿．輕食(50)",
          "服務": "採用有機黃豆、黑豆、南瓜等蔬果製成美味豆漿、南瓜漿等有益身體健康；漢堡、三明治等採用苜蓿芽、水果，讓人吃了活力滿滿。",
          "電話": "手機0982-363-608",
        },

    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets16.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets16 = @markets16.first(12)
  end
end