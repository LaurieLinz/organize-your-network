require 'rails_helper'

RSpec.describe "expertises/index", type: :view do
  before(:each) do
    assign(:expertises, [
      Expertise.create!(
        :discipline => "Discipline"
      ),
      Expertise.create!(
        :discipline => "Discipline"
      )
    ])
  end

  it "renders a list of expertises" do
    render
    assert_select "tr>td", :text => "Discipline".to_s, :count => 2
  end
end
