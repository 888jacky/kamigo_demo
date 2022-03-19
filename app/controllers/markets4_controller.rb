class Markets4Controller < ApplicationController
    def index
      @markets4 = [
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3338/1622515647_1.jpg",
          "攤商": "顏菊枝蔬菜舖(8)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "手機0989692029",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946711826_813ba3a7de_b.jpg",
          "攤商": "顏菊枝蔬菜舖(8)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "手機0989692029",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947318270_a4ce3c1e0f_b.jpg",
          "攤商": "顏菊枝蔬菜舖(8)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "手機0989692029",
        },


    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets4.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets4 = @markets4.first(12)
  end
end