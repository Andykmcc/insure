class Product < ActiveRecord::Base
  attr_accessible :name, :hero, :manufacturer, :model, :year
  
  validates :name, :manufacturer, :model, :year, :presence => true
  validates :year, :numericality => { :only_integer => true, :greater_than => 1900, :less_than_or_equal_to => Time.now.year+1 }
  validates :model, :uniqueness => true
  
  has_attached_file :hero, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  has_many :ownerships
  has_many :users, :through => :ownerships
end