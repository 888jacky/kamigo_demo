class Markets12Controller < ApplicationController
    def index
      @markets12 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51876999853_122e34cc30_b.jpg",
          "攤商": "小惠姊甜品",
          "服務": "各式零食、珍珠、愛玉、小西點、蜜餞、香餅",
          "電話": "手機0975298761電話06-3318293",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877241004_59693638e8_b.jpg",
          "攤商": "小惠姊甜品",
          "服務": "各式零食、珍珠、愛玉、小西點、蜜餞、香餅",
          "電話": "手機0975298761電話06-3318293",
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