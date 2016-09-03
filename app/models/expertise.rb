class Expertise < ActiveRecord::Base
  has_and_belongs_to_many :contacts

  def discipline=(s)
    write_attribute(:discipline, s.to_s.capitalize)
  end
end
