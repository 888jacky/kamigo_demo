class Markets23Controller < ApplicationController
    def index
      @markets23 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51947441470_12b3ce7e24_b.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51945736862_c1723dda42_m.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946719531_e83225250c_m.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947325280_4e8a14492b_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946719541_7e6bb0ced4_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947031499_582c45e6bd_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947325640_25845dac75_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947325365_09e231bd28_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946719436_4470bdcf73_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947325390_c7898f9a7e_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947031234_2a16aba9a2_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
         "電話": "尚未提供",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51946719351_5dd4cfaacc_c.jpg",  
         "攤商": "不二家精緻生活館(10)",
         "服務": "日本精緻生活用品\n進口精品服飾\n精緻皮件",
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