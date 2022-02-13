class Markets1Controller < ApplicationController
    def index
      @markets1 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51877543975_7883540684_n.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51877564955_d59411b4e2_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒新鮮水果籃外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51879540410_16fdc59fdf_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒新鮮水果籃外送服務",
          "電話": "手機0912127246電話3316678",
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