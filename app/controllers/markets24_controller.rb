class Markets24Controller < ApplicationController
    def index
      @markets24 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51946719941_0169c7b98c_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946719891_16e0349af4_c.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51945737167_d9622b6d00_b.jpg",  
         "攤商": "韓櫃服飾",
         "服務": "歡迎現場選購",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946792533_550bfbebc9_b.jpg",  
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