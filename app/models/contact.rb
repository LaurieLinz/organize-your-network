class Contact < ActiveRecord::Base
  enum skillset: [:junior, :mid, :expert, :overconfident ]
  has_and_belongs_to_many :expertises

  def self.search(search)
    Contact.joins(:expertises).where("contacts.first_name || contacts.last_name ILIKE ? or expertises.discipline ILIKE ?", "%#{search}%", "%#{search}%").distinct
  end
end
