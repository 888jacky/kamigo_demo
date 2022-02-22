class Markets21Controller < ApplicationController
    def index
      @markets21 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51895815277_32f1061b97_b.jpg",  
         "攤商": "福記水餃",
         "服務": "手工水餃、餛飩",
         "電話": "手機0935-679-012",
        },
  
    
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets21.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets21 = @markets21.first(12)
  end
end