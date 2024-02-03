class List < ApplicationRecord
  # Listモデルに画像を扱うためのimageカラムが追記されたかのように扱うことができる
  has_one_attached :image
end