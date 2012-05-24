class Note < ActiveRecord::Base
  attr_accessible :content, :user
  self.per_page = 5
  belongs_to :user
  validates_presence_of :content
  def self.search(search)
    search_condition = "%" + search + "%"
    self.where('user LIKE ? OR content LIKE ?', search_condition, search_condition)
  end

  def as_json(opts={})
    { :user => self.user.name, :content => self.content }
  end
end
