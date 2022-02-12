class Markets1Controller < ApplicationController
    def index
      @markets1 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\\n新鮮水果籃\\n外送服務",
          "連結": "https://momo.dm/R7YqRI",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\\n新鮮水果籃\\n外送服務",
          "連結": "https://momo.dm/R7YqRI",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\\n新鮮水果籃\\n外送服務",
          "連結": "https://momo.dm/R7YqRI",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets1.filter! do |market|
            market[:名稱].include? @keyword
      end
    end
    @markets1 = @markets1.first(12)
  end
end