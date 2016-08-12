require 'rails_helper'

RSpec.describe "expertises/edit", type: :view do
  before(:each) do
    @expertise = assign(:expertise, Expertise.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit expertise form" do
    render

    assert_select "form[action=?][method=?]", expertise_path(@expertise), "post" do

      assert_select "input#expertise_first_name[name=?]", "expertise[first_name]"

      assert_select "input#expertise_last_name[name=?]", "expertise[last_name]"
    end
  end
end
