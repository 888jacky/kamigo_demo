class Markets6Controller < ApplicationController
    def index
      @markets6 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51888853886_835cfe41b6_b.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51889188024_afcfebaf40_c.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51889188064_b21ddac6be_b.jpg",
          "攤商": "阿德魚攤",
          "服務": "各式生鮮魚貨",
          "電話": "電話06-3314081",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887892357_bd727bbf86_b.jpg",
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