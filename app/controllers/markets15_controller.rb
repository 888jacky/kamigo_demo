class Markets15Controller < ApplicationController
    def index
      @markets15 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51887020781_0ba5cb4da6_c.jpg",
          "攤商": "優喝呵健康飲食(55)",
          "服務": "各式饅頭、粥品及豆製飲品",
          "電話": "手機0968917895",
        },
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3336/1622515590_3_thumb.jpg",
          "攤商": "優喝呵健康飲食(55)",
          "服務": "各式饅頭、粥品及豆製飲品",
          "電話": "手機0968917895",
        },

    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets15.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets15 = @markets15.first(12)
  end
end