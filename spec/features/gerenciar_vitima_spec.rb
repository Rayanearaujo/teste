# coding: utf-8
require 'rails_helper'
feature 'gerenciar Vitima' do
	scenario 'incluir Vitima' do # , :js => true do
		visit new_vitima_path
		preencher_e_verificar_vitima
	end
	scenario 'alterar Vitima' do #, :js => true do
		vitima = FactoryGirl.create(:vitima)
		visit edit_vitima_path(vitima)
		preencher_e_verificar_vitima
	end
	scenario 'excluir vitima' do #, :javascript => true do
	vitima = FactoryGirl.create(:vitima)
		visit vitimas_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_vitima
		fill_in 'Sexo', :with => "f"
		fill_in 'Idade', :with => 10
		fill_in 'Email', :with => "ana.ana@gmail.com"
		fill_in 'Senha', :with => "ana123"
		click_button 'Salvar'
		expect(page).to have_content 'f'
		expect(page).to have_content 10
		expect(page).to have_content 'ana.ana@gmail.com'
		expect(page).to have_content 'ana123'
	end
end
