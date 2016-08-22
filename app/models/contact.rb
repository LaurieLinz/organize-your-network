class Contact < ActiveRecord::Base
  enum skillset: [:junior, :mid, :expert, :overconfident ]
  has_and_belongs_to_many :expertises
end
