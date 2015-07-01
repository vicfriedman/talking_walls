class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :answers
  accepts_nested_attributes_for :answers

  # has_attached_file :image1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\Z/


end
