class Markets35Controller < ApplicationController
    def index
      @markets35 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "女裝",
         "服務": "週五(裕平路)\n隔週",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "針線",
         "服務": "週五(裕平路)",
         "電話": "尚未提供",
        },
        {
        "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
        "攤商": "童裝",
        "服務": "週五(裕平路)",
        "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51888941978_30eb1d2cf3_b.jpg",  
         "攤商": "牛肉",
         "服務": "週五(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "內衣",
         "服務": "週五(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "女裝",
         "服務": "週五(公園)",
         "電話": "尚未提供",
        },
        {
        "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
        "攤商": "蒸粿",
        "服務": "週五(公園)\n隔週",
        "電話": "尚未提供",
        },
  
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets35.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets35 = @markets35.first(12)
  end
end