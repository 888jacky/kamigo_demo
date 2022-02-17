class Markets8Controller < ApplicationController
    def index
      @markets8 = [
        {
          "圖片": "https://www.tyfoc.com.tw/%E7%94%9F%E9%A3%9F/_imagecache/P=W250,H250,D/%E5%85%A8%E9%9B%9E.jpg",
          "攤商": "台南永發霸王雞",
          "服務": "台灣在地放山雞飼養飼養\\n屠宰 產銷一條龍\\n確保最安全衛生的雞肉品質\\n雞精禮盒",
          "電話": "電話06-3315936",
        },
        {
          "圖片": "https://www.tyfoc.com.tw/%E7%94%9F%E9%A3%9F/_imagecache/P=W250,H250,D/%E5%B8%B6%E9%AA%A8%E9%9B%9E%E8%85%BF.jpg",
          "攤商": "台南永發霸王雞",
          "服務": "台灣在地放山雞飼養飼養\\n屠宰 產銷一條龍\\n確保最安全衛生的雞肉品質\\n雞精禮盒",
          "電話": "電話06-3315936",
        },
        {
          "圖片": "https://www.tyfoc.com.tw/__edited_images/_imagecache/P=W250,H250,D/imagetools0_edited.jpg",
          "攤商": "台南永發霸王雞",
          "服務": "台灣在地放山雞飼養飼養\\n屠宰 產銷一條龍\\n確保最安全衛生的雞肉品質\\n雞精禮盒",
          "電話": "電話06-3315936",
        },
        {
          "圖片": "https://www.tyfoc.com.tw/%E7%94%9F%E9%A3%9F/_imagecache/P=W250,H250,D/%E5%8D%8A%E9%9B%9E%E5%88%87%E5%A1%8A.jpg",
          "攤商": "台南永發霸王雞",
          "服務": "台灣在地放山雞飼養飼養\\n屠宰 產銷一條龍\\n確保最安全衛生的雞肉品質\\n雞精禮盒",
          "電話": "電話06-3315936",
        },
        {
          "圖片": "https://www.tyfoc.com.tw/%E7%94%9F%E9%A3%9F/_imagecache/P=W250,H250,D/%E6%B0%B8%E7%99%BC%E9%9C%B8%E7%8E%8B-%E5%8E%BB%E9%AA%A8%E8%85%BF%E8%82%89300%E5%85%8B.JPG",
          "攤商": "台南永發霸王雞",
          "服務": "台灣在地放山雞飼養飼養\\n屠宰 產銷一條龍\\n確保最安全衛生的雞肉品質\\n雞精禮盒",
          "電話": "電話06-3315936",
        },
        {
          "圖片": "https://www.tyfoc.com.tw/%E7%94%9F%E9%A3%9F/_imagecache/P=W250,H250,D/%E6%B0%B8%E7%99%BC%E9%9C%B8%E7%8E%8B-%E4%B8%89%E7%AF%80%E7%BF%85600%E5%85%8B.JPG",
          "攤商": "台南永發霸王雞",
          "服務": "台灣在地放山雞飼養飼養\\n屠宰 產銷一條龍\\n確保最安全衛生的雞肉品質\\n雞精禮盒",
          "電話": "電話06-3315936",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets8.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets8 = @markets8.first(12)
  end
end