class Markets2Controller < ApplicationController
    def index
      @markets2 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51886691496_a176fea5bc_b.jpg",
          "攤商": "明樹水果行",
          "服務": "提供水果籃服務",
          "電話": "尚未提供",
        },

    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets2.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets2 = @markets2.first(12)
  end
end