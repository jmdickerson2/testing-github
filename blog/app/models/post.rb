class Post < ActiveRecord::Base

  def hello
    "Hello #{self.name}"
  end
  

  attr_accessible :content, :name, :title

  validates :name,  :presence => true
  validates :title, :presence => true,
  					:length => { :minimum => 5 }
end
