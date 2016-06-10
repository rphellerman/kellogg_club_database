class Category < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :name }

  has_many :clubs, :class_name => "Club", :foreign_key => "category_id"

end
