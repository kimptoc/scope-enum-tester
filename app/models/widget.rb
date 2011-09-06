class Widget < ActiveRecord::Base

  belongs_to :category

    scope :one, where(:size => 1).order(:created_at)
    scope :two, where(:size => 2).order(:created_at)
end
