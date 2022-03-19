class Markets22Controller < ApplicationController
    def index
      @markets22 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51945729367_2d3da9da19_b.jpg",  
         "攤商": "手工水餃(葷素)",
         "服務": "新鮮高麗菜、鮮肉韭菜、養生素食",
         "電話": "尚未提供",
        },
  
    
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets22.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets22 = @markets22.first(12)
  end
end