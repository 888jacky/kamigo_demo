class Markets24Controller < ApplicationController
    def index
      @markets24 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51889188199_a72e24fdd9_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51888854426_cfc515fc08_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889188184_85c6d5be50_c.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889510755_12a47364e6_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889188199_a72e24fdd9_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889188199_a72e24fdd9_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
  
    
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets24.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets24 = @markets24.first(12)
  end
end