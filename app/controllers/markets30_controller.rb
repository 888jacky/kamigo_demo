class Markets30Controller < ApplicationController
    def index
      @markets30 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51945804992_4072da90e5_b.jpg",  
         "攤商": "桑普百貨行",
         "服務": "修改衣服、換拉鍊",
         "電話": " ",
        },
  
    
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets30.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets30 = @markets30.first(12)
  end
end