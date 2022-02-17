class Markets32Controller < ApplicationController
    def index
      @markets32 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "竹炭內衣",
         "服務": "週二(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "女裝",
         "服務": "週二(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "滿福食堂",
         "服務": "週二(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "女裝",
         "服務": "週二(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "花生",
         "服務": "週二(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "鐘錶",
         "服務": "週二(公園)\n隔週",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51877543975_8ca887e2f8_n.jpg",  
         "攤商": "杏仁",
         "服務": "週二(公園)",
         "電話": "尚未提供",
        },
  
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets32.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets32 = @markets32.first(12)
  end
end