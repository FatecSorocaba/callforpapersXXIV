class Talk < ApplicationRecord
  belongs_to :speaker

  validates_presence_of :title, :description, :theme, :required_knowledge, :kind
  validates_length_of :title, maximum: 100
  validates_length_of :description, maximum: 300

  enum theme: [:web, :games, :dev_ops, :carrer, :design, :mobile, :analysis, :other]
  enum required_knowledge: [:beginner, :medium, :advanced]
  enum kind: [:talk, :lightning, :course]
end
