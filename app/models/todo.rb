# app/models/todo.rb
class Todo < ApplicationRecord
  belongs_to :user
end