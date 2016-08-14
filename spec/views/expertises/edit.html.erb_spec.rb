require 'rails_helper'

RSpec.describe "expertises/edit", type: :view do
  before(:each) do
    @expertise = assign(:expertise, Expertise.create!(
      :discipline => "MyString"
    ))
  end

  it "renders the edit expertise form" do
    render

    assert_select "form[action=?][method=?]", expertise_path(@expertise), "post" do

      assert_select "input#expertise_discipline[name=?]", "expertise[discipline]"
    end
  end
end
