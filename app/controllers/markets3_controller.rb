class Markets3Controller < ApplicationController
    def index
      @markets3 = [
        {
          "圖片": "https://live.staticflickr.com/65535/51947024014_2fd3732410_b.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946784508_ba606ee57e_b.jpg",
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
          "圖片": "https://live.staticflickr.com/65535/51946791673_845b726993_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n芽白菜",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947325050_85a7fce63d_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n芹菜管",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51946718951_902f926785_c.jpg",
          "攤商": "阿城新鮮蔬菜(30)",
          "服務": "每日最新各式生鮮蔬菜\n高麗菜苗",
          "電話": "尚未提供",
        },
        {
          "圖片": "https://live.staticflickr.com/65535/51947325030_df97c54e8d_c.jpg",
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