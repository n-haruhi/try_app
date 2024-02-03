class List < ApplicationRecord
  # Listモデルに画像を扱うためのimageカラムが追記されたかのように扱うことができる
  has_one_attached :image

  # それも空欄不可。共通項目のためwith_optionsでまとめる
  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end

end