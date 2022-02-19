class Markets3Controller < ApplicationController
    def index
      @markets3 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51877240619_08796e32fc_b.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51876999638_2573884a48_b.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://www.cto.moea.gov.tw/Market/upload/store_upload/3329/1622515102_3.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51889753897_8c7230c1b0_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n芽白菜",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51890714961_a84d003c5a_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n芹菜管",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51889753887_d0b4560615_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n高麗菜苗",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51889788377_cf197dcf75_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n青花筍",
          "電話": "尚未提供",
        },


    ]

    @keyword = params[:keyword]

    if @keyword.present?
        @markets3.filter! do |market|
            market[:攤商].include? @keyword
      end
    end
    @markets3 = @markets3.first(12)
  end
end