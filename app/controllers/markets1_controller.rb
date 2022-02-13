class Markets1Controller < ApplicationController
    def index
      @markets1 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒新鮮水果籃外送服務",
          "電話": "手機0912",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒新鮮水果籃外送服務",
          "電話": "手機0912",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒新鮮水果籃外送服務",
          "電話": "手機0912",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets1.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets1 = @markets1.first(12)
  end
end