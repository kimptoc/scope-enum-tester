class Widget < ActiveRecord::Base

  belongs_to :category

    scope :one, where(:category_id => Category.CAT1).order(:created_at)
    scope :two, where(:category_id => Category.CAT2).order(:created_at)
end
