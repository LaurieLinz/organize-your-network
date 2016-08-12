require 'rails_helper'

RSpec.describe "expertises/index", type: :view do
  before(:each) do
    assign(:expertises, [
      Expertise.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Expertise.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of expertises" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
