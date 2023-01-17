class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum frequency: %i[not_applicable daily weekly bi_weekly monthly quarterly]
  enum status: %i[available dealing closed]
end
