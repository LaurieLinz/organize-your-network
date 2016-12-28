class Contact < ActiveRecord::Base
  validates :date_met, presence: true
  enum skillset: [:junior, :mid, :expert, :overconfident ]
  has_and_belongs_to_many :expertises

  def self.search(search)
    Contact.eager_load(:expertises).where("first_name ILIKE :search OR last_name ILIKE :search OR expertises.discipline ILIKE :search", search: "%#{search}%").distinct
  end
end
