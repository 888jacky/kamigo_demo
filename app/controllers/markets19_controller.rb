class Markets19Controller < ApplicationController
    def index
      @markets19 = [
        {
         "圖片": "https://live.staticflickr.com/65535/51946786616_b08f91a332_b.jpg",  
         "攤商": "誠泉魚丸鋪",
         "服務": "花枝丸、貢丸、魚漿、甜不辣、黑輪、香菇肉丸、蝦米肉丸、虱目魚丸",
         "電話": "手機0919-649-733",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947099639_7fbc1cb262_b.jpg",  
         "攤商": "誠泉魚丸鋪",
         "服務": "花枝丸、貢丸、魚漿、甜不辣、黑輪、香菇肉丸、蝦米肉丸、虱目魚丸",
         "電話": "手機0919-649-733",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947103979_041b73ef3f_b.jpg",  
         "攤商": "誠泉魚丸鋪",
         "服務": "花枝丸、貢丸、魚漿、甜不辣、黑輪、香菇肉丸、蝦米肉丸、虱目魚丸",
         "電話": "手機0919-649-733",
        },
        {
         "圖片": "https://live.staticflickr.com/65535/51947103999_6e3d15e4da_b.jpg",  
         "攤商": "誠泉魚丸鋪",
         "服務": "花枝丸、貢丸、魚漿、甜不辣、黑輪、香菇肉丸、蝦米肉丸、虱目魚丸",
         "電話": "手機0919-649-733",
        },  
    
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets19.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets19 = @markets19.first(12)
  end
end