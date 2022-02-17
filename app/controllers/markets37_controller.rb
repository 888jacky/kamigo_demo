class Markets37Controller < ApplicationController
    def index
      @markets37 = [
        {
         "圖片": " ",  
         "攤商": "竹炭內衣",
         "服務": "週日(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": " ",  
         "攤商": "食品",
         "服務": "週日(公園)",
         "電話": "手機0913-232-816",
        },
        {
         "圖片": " ",  
         "攤商": "爆漿手工丸子",
         "服務": "週日(公園)\\n原味貢丸、蔥花貢丸、黑胡椒貢丸、香菇貢丸、苦瓜封貢丸",
         "電話": "手機0939-706-101",
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
        @markets37.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets37 = @markets37.first(12)
  end
end