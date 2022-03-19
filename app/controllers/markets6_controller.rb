class Markets6Controller < ApplicationController
    def index
      @markets6 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51945736982_4c297f8c8b_b.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946719751_34713451c3_c.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946792453_3061f95de7_b.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946719806_8bc6a0abaa_b.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets6.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets6 = @markets6.first(12)
  end
end