require 'rails_helper'

feature 'Creating Contact' do

  scenario 'can create a contact' do

    visit '/contacts/new'
    fill_in 'First name', with: 'Donald'
    fill_in 'Last name', with: 'Duck'
    fill_in 'Email', with: 'Don@ducksrus.com'
    fill_in 'Phone', with: '555-111-2222'
    fill_in 'Met on social platform', with: 'slack'
    fill_in 'Availability', with: 'Full Time'
    fill_in 'Availability', with: 'Full Time'
    fill_in 'Skillset', with: 'overconfident'
    click_button 'Create Contact'

  end


end


