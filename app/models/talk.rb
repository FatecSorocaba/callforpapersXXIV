class Talk < ApplicationRecord
  belongs_to :speaker
  
  enum theme: [:web, :games, :dev_ops, :carrer, :design, :mobile, :analysis, :other]
  enum required_knowledge: [:beginner, :medium, :advanced]
end
