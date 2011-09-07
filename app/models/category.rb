class Category < ActiveRecord::Base

  has_many :widgets

  scope :CATONE, where(:cat_name => "cat1")

  def self.CAT1
    find_by_cat_name("cat1")
  end

  def self.CAT2
    find_by_cat_name("cat2")
  end

end
