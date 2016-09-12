class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  def self.search(searching)
	  where("name LIKE ?", "%#{searching}%") 
	  where("content LIKE ?", "%#{searching}%")
  end

end
