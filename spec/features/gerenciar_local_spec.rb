# coding: utf-8
require 'rails_helper'
feature 'gerenciar Local' do
	scenario 'incluir Local' do # , :js => true do
		visit new_local_path
		preencher_e_verificar_local
	end
	scenario 'alterar Local' do #, :js => true do
		local = FactoryGirl.create(:local)
		visit edit_local_path(local)
		preencher_e_verificar_local
	end
	scenario 'excluir local' do #, :javascript => true do
		local = FactoryGirl.create(:local)
		visit locais_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_local
		fill_in 'Latitude', :with => "1.5"
		fill_in 'Longitude', :with => "1.5"
		click_button 'Salvar'
		expect(page).to have_content '1.5'
		expect(page).to have_content '1.5'
	end
end
