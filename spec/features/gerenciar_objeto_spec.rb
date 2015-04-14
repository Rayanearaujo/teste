# coding: utf-8
require 'rails_helper'
feature 'gerenciar Objeto' do
	scenario 'incluir Objeto' do # , :js => true do
		visit new_objeto_path
		preencher_e_verificar_objeto
	end
	scenario 'alterar Objeto' do #, :js => true do
		objeto = FactoryGirl.create(:objeto)
		visit edit_objeto_path(objeto)
		preencher_e_verificar_objeto
	end
	scenario 'excluir objeto' do #, :javascript => true do
		objeto = FactoryGirl.create(:objeto)
		visit objetos_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_objeto
		fill_in 'Descricao', :with => "descricao"
		click_button 'Salvar'
		expect(page).to	have_content 'descricao'
	end
end
