require 'rails_helper'

RSpec.describe "medalhas/new", type: :view do
  before(:each) do
    assign(:medalha, Medalha.new(
      :titulo => "MyString"
    ))
  end

  it "renders new medalha form" do
    render

    assert_select "form[action=?][method=?]", medalhas_path, "post" do

      assert_select "input#medalha_titulo[name=?]", "medalha[titulo]"
    end
  end
end
