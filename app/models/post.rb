class Post < ActiveRecord::Base
  validates :title, :author_id, presence: true

  belongs_to :author, class_name: "User"

  has_many(
    :postsubs,
    primary_key: :id,
    foreign_key: :post_id,
    class_name: "PostSub"
  )

  has_many(
    :subs,
    through: :postsubs,
    source: :sub
  )

end
