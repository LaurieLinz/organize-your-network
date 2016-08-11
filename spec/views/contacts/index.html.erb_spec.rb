require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :met_on_social_platform => "Met on Social Platform",
        :availability => "Availability",
        :skillset => 2,
        :notes => "MyText"
      ),
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :met_on_social_platform => "Met on Social Platform",
        :availability => "Availability",
        :skillset => 2,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => "Availability".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
