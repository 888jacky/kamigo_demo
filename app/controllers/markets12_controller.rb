class Markets12Controller < ApplicationController
    def index
      @markets12 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51945729417_c75a6614b5_b.jpg",
          "攤商": "小惠姊甜品",
          "服務": "各式零食、珍珠、愛玉、小西點、蜜餞、香餅",
          "電話": "手機0918832261",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51945729487_522eed6f0f_b.jpg",
          "攤商": "小惠姊甜品",
          "服務": "各式零食、珍珠、愛玉、小西點、蜜餞、香餅",
          "電話": "手機0918832261",
        },

    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets12.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets12 = @markets12.first(12)
  end
end