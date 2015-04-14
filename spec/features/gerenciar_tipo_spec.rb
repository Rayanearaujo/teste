# coding: utf-8
require 'rails_helper'
feature 'gerenciar Tipo' do
	scenario 'incluir Tipo' do # , :js => true do
		visit new_tipo_path
		preencher_e_verificar_tipo
	end
	scenario 'alterar Tipo' do #, :js => true do
		tipo = FactoryGirl.create(:tipo)
		visit edit_tipo_path(tipo)
		preencher_e_verificar_tipo
	end
	scenario 'excluir tipo' do #, :javascript => true do
	tipo = FactoryGirl.create(:tipo)
		visit tipos_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_tipo
		fill_in 'Descricao', :with => "descricao"
		click_button 'Salvar'
		expect(page).to have_content 'descricao'
	end
end
