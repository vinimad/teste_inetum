Quando('faço uma pesquisa') do
    @home_page = Home.new
    @home_page.load
    @home_page.searchbox.set 'Dress'
    @home_page.btpesquisar.click
    sleep 1
end
  
  Então('Verifico se a pesquisa foi efetuada com sucesso') do
    expect(page).to have_content("results have been found.")
  end