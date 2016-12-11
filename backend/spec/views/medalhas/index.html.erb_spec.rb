require 'rails_helper'

RSpec.describe "medalhas/index", type: :view do
  before(:each) do
    assign(:medalhas, [
      Medalha.create!(
        :titulo => "Titulo"
      ),
      Medalha.create!(
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of medalhas" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
