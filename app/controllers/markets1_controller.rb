class Markets1Controller < ApplicationController
    def index
      @markets1 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51946810103_dcba90ae4e_m.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51945729387_1593036701_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946729576_ea8096193b_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51945746692_4d26b067b1_b.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51945746632_14042e6a39_b.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946729431_b569820fab_b.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946802458_c0a24aab39_c.jpg",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipN4dfqvQUHa1cyCyqLPHNKXIFy2foVvvOAD0kRo=w600-h321-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipOjrCjf7S-BN4PQcP7GA6NqcqQtEVAoqQdbyzQb=w600-h485-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipM-xViFe9O0jVyeQ0-u3IIe5u6-n50sZWRxVrkk=w600-h988-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipOCL6Zd_3y3l_aqkYjTaNYYyhtThbtOhGqFcT3Y=w600-h650-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
          "電話": "手機0912127246電話3316678",
        },
        {
          "圖片": "https://lh5.googleusercontent.com/p/AF1QipMdql0HBKUjkWSyBND-EhhuiKRH5bUMnX3TnXbc=w600-h485-p-k-no",
          "攤商": "燕巢阿忠水果行",
          "服務": "新鮮水果禮盒\n新鮮水果籃\n幫忙代寄",
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