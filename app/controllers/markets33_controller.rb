class Markets33Controller < ApplicationController
    def index
      @markets33 = [
        {
         "圖片": " ",  
         "攤商": "海帶捲",
         "服務": "週三(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "女裝",
         "服務": "週三(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "牛肉",
         "服務": "週三(公園)",
         "電話": "尚未提供",
        },
    #    {
    #     "圖片": " ",  
    #     "攤商": "女裝",
    #     "服務": "週二(公園)",
    #     "電話": "尚未提供",
    #    },

  
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets33.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets33 = @markets33.first(12)
  end
end