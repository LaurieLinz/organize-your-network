require 'rails_helper'

RSpec.describe "expertises/index", type: :view do
  before(:each) do
    assign(:expertises, [
      Expertise.create!(),
      Expertise.create!()
    ])
  end

  it "renders a list of expertises" do
    render
  end
end
