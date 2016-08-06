class Contact < ActiveRecord::Base
  enum skillset: [:junior, :mid, :expert, :overconfident ]
end
