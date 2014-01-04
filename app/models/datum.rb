class Datum < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
