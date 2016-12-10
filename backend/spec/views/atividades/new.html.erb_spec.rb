require 'rails_helper'

RSpec.describe "atividades/new", type: :view do
  before(:each) do
    assign(:atividade, Atividade.new(
      :titulo => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders new atividade form" do
    render

    assert_select "form[action=?][method=?]", atividades_path, "post" do

      assert_select "input#atividade_titulo[name=?]", "atividade[titulo]"

      assert_select "input#atividade_descricao[name=?]", "atividade[descricao]"
    end
  end
end
