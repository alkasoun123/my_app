class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  def self.search(searching)
	  @search = where("content LIKE ?", "%#{searching}%")
	  return @search
  end

end
