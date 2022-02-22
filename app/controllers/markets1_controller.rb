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
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51879540410_16fdc59fdf_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51886691426_25648ecae8_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887347690_85f6bab136_b.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51886691656_dd31a35ea0_b.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887018254_ef5251cab5_b.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipN4dfqvQUHa1cyCyqLPHNKXIFy2foVvvOAD0kRo=w600-h321-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipOjrCjf7S-BN4PQcP7GA6NqcqQtEVAoqQdbyzQb=w600-h485-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipM-xViFe9O0jVyeQ0-u3IIe5u6-n50sZWRxVrkk=w600-h988-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipOCL6Zd_3y3l_aqkYjTaNYYyhtThbtOhGqFcT3Y=w600-h650-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipMdql0HBKUjkWSyBND-EhhuiKRH5bUMnX3TnXbc=w600-h485-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n外送服務",
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