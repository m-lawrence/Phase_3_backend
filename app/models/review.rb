class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hike

  def username
    self.user.name
  end

  def date
    self.created_at.strftime(" on %Y/%m/%d ")
  end
end

