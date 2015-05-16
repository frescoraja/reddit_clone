class Sub < ActiveRecord::Base
  validates :title, :moderator_id, presence: true
  validates :title, uniqueness: { scope: :moderator_id,
    message: ": You already have a sub with that title" }

  belongs_to(
    :moderator,
    primary_key: :id,
    foreign_key: :moderator_id,
    class_name: "User")

  has_many(
    :postsubs,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: "PostSub"
  )

  has_many(
    :posts,
    through: :postsubs,
    source: :post
  )
end
