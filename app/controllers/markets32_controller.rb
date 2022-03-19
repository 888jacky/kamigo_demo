class Markets32Controller < ApplicationController
    def index
      @markets32 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51947030894_1ca6f8a5a9_c.jpg",  
         "攤商": "竹炭內衣",
         "服務": "週二(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946811108_210866e168_m.jpg",  
         "攤商": "女裝",
         "服務": "週二(裕平路)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51945861402_8999016c9f_b.jpg",  
         "攤商": "滿福食堂",
         "服務": "週二(裕平路)東坡肉古、早味控肉、滷豬腳筍絲、桂竹筍、肉圓、肉粽、九層糕、素食的小菜、蝦、紅燒獅子頭、滷蛋、滷豆腐、蔥燒鯽魚、秋刀魚漫漬魯
         ",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947040489_b20e48ae3c_b.jpg",  
         "攤商": "女裝",
         "服務": "週二(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946801478_310f9d044b_b.jpg",  
         "攤商": "花生",
         "服務": "週二(公園)",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947334895_3d99198e93_b.jpg",  
         "攤商": "鐘錶",
         "服務": "週二(公園)\n隔週",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946801573_a744443917_b.jpg",  
         "攤商": "杏仁",
         "服務": "週二(公園)",
         "電話": "尚未提供",
        },
  
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets32.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets32 = @markets32.first(12)
  end
end