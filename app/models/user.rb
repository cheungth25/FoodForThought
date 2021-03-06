class User < ApplicationRecord
  has_many :comments, :foreign_key => "reader_id"
  has_many :stories, :foreign_key => "author_id"
  has_many :recipe_stories, through: :stories

  def to_s
    self.first_name + " " + self.last_name
  end

end
