class Contact < ActiveRecord::Base
  enum skillset: [:junior, :mid, :expert, :overconfident ]
  has_and_belongs_to_many :expertises

  def self.search(search)
    where("first_name || last_name ILIKE ?", "%#{search}%")
  end
end
