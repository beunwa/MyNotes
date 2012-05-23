class Note < ActiveRecord::Base
  attr_accessible :content, :user
  self.per_page = 5
  validates_presence_of :user, :content
  def self.search(search)
    search_condition = "%" + search + "%"
    self.where('user LIKE ? OR content LIKE ?', search_condition, search_condition)
  end
end
