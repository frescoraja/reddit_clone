# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "mike", password: "password")
User.create(username: "david", password: "password")

Sub.create(title: "cats", moderator_id: 1, description: "description")
Sub.create(title: "more cats", moderator_id: 1, description: "more cats description")



Post.create(author_id: 1, title: 'Something', sub_ids: [1])
Post.create(author_id: 1, title: 'Another', sub_ids: [1])
Post.create(author_id: 2, title: 'Testing', sub_ids: [1,2])
Post.create(author_id: 1, title: 'Cats n stuff', sub_ids: [2])
