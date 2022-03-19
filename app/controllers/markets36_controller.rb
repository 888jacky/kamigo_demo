class Markets36Controller < ApplicationController
    def index
      @markets36 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51947030894_1ca6f8a5a9_c.jpg",  
         "攤商": "竹炭",
         "服務": "週六(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946811108_210866e168_m.jpg",  
         "攤商": "泡茶",
         "服務": "週六(裕平路)",
         "電話": "尚未提供",
        },
        {
        "圖片": "https://live.staticflickr.com/65535/51946811108_210866e168_m.jpg",  
        "攤商": "黑糖糕",
        "服務": "週六(裕平路)",
        "電話": "尚未提供",
        },
        {
        "圖片": "https://live.staticflickr.com/65535/51946811108_210866e168_m.jpg",  
        "攤商": "機能衣",
        "服務": "週六(裕平路)",
        "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51945736937_4a1abd31a4_b.jpg",  
         "攤商": "粉類",
         "服務": "週六(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946811108_210866e168_m.jpg",  
         "攤商": "糖炒栗子",
         "服務": "週六(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946811108_210866e168_m.jpg",  
         "攤商": "女裝",
         "服務": "週六(公園)",
         "電話": "尚未提供",
        },
        {
        "圖片": "https://live.staticflickr.com/65535/51946728856_67a1e42ebb_b.jpg",  
        "攤商": "南投山藥",
        "服務": "週六(公園)\n自產自銷\n隔週",
        "電話": "尚未提供",
        },
  
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets36.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets36 = @markets36.first(12)
  end
end