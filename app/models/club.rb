class Club < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :name }

  has_many :roles, :class_name => "Role", :foreign_key => "club_id"

  belongs_to :category

end
