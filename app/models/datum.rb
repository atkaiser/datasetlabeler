class Datum < ActiveRecord::Base
  belongs_to :project
  has_many :votes
  attr_accessible :name, :project_id, :photo
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
