class Post < ApplicationRecord
  belongs_to :user

  validates :body, presence: true, length: {maximum: 120}

  def user
    return User.find_by(id: self.user_id)
  end
end
