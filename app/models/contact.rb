class Contact < ActiveRecord::Base
  enum skillset: [:junior, :mid, :expert, :over ]
end
