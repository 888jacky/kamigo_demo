class Markets7Controller < ApplicationController
    def index
      @markets7 = [
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3326/1622515005_1.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887034754_1894daea11_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887364025_70850e996d_b.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51885742592_94b938f6ce_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51886792013_0d53343dd5_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887363895_4debc51333_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887363890_bdab66d882_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51886791993_ec0f41c09f_b.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51887363920_f9f18036d3_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51886791973_31c588a7f9_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51886708266_ba0e383605_c.jpg",
          "攤商": "玉井跑山雞(51)",
          "服務": "山雞肉質特別Q 彈有勁，提供生、熟食雞肉，是養生料理最佳選擇。",
          "電話": "手機0929536077電話06-3310229",
        },

    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets7.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets7 = @markets7.first(12)
  end
end