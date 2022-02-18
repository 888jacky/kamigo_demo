class Markets23Controller < ApplicationController
    def index
      @markets23 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51887041638_5f5dea73ba_b.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51887041638_5f5dea73ba_b.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51887041638_5f5dea73ba_b.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51887892272_8281c4a196_m.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889510600_174027a5a6_m.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889510300_49044af5be_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889187749_d340ec66ca_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51887892267_f3864be386_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889187929_626a745e55_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889510415_e335a15597_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889187784_8ec28b7db8_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51889510320_43f0d52815_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日系商品",
         "電話": "尚未提供",
        },
  
    
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets23.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets23 = @markets23.first(12)
  end
end