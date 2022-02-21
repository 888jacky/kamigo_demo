class Markets9Controller < ApplicationController
    def index
      @markets9 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51895242360_5baa3bedca_b.jpg",
          "攤商": "新喜珍肉舖",
          "服務": "泡菜香腸\n火鍋肉片\n烤肉片\n自製豬油\n高粱香腸",
          "電話": "手機0981917078",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51894589126_a6c89d857e_c.jpg",
          "攤商": "新喜珍肉舖",
          "服務": "泡菜香腸\n火鍋肉片\n烤肉片\n自製豬油\n高粱香腸",
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