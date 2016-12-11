require 'rails_helper'

RSpec.describe "medalhas/edit", type: :view do
  before(:each) do
    @medalha = assign(:medalha, Medalha.create!(
      :titulo => "MyString"
    ))
  end

  it "renders the edit medalha form" do
    render

    assert_select "form[action=?][method=?]", medalha_path(@medalha), "post" do

      assert_select "input#medalha_titulo[name=?]", "medalha[titulo]"
    end
  end
end
