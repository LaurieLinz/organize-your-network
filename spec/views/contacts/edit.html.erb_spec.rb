require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :met_on_social_platform => "MyString",
      :availability => "MyString",
      :skillset => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_first_name[name=?]", "contact[first_name]"

      assert_select "input#contact_last_name[name=?]", "contact[last_name]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_phone[name=?]", "contact[phone]"

      assert_select "input#contact_service[name=?]", "contact[service]"

      assert_select "input#contact_availability[name=?]", "contact[availability]"

      assert_select "input#contact_skillset[name=?]", "contact[skillset]"

      assert_select "textarea#contact_notes[name=?]", "contact[notes]"
    end
  end
end
