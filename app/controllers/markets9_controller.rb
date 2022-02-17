class Markets9Controller < ApplicationController
    def index
      @markets9 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51886921923_e0ddc22888_b.jpg",
          "攤商": "新喜珍肉舖",
          "服務": " ",
          "電話": "手機0981917078",
        },
    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets9.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets9 = @markets9.first(12)
  end
end