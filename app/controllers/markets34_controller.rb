class Markets34Controller < ApplicationController
    def index
      @markets34 = [
        {
         "圖片": " ",  
         "攤商": "五金",
         "服務": "週四(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "內衣",
         "服務": "週四(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "麵包",
         "服務": "週四(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "杏包菇",
         "服務": "週四(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "干貝",
         "服務": "週四(公園)",
         "電話": "尚未提供",
        },
  
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets34.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets34 = @markets34.first(12)
  end
end