Quando('realizo o registro completo') do
    @home_page = Home.new
    @account_page = Account.new
    @registro_page = Registro.new
    @home_page.load
    @home_page.btsignin.click
    @account_page.create
    @account_page.btenter.click
    @registro_page.registrar
    sleep 1
  end
  
  Então('Verifico se o registro foi realizado com sucesso') do
    expect(page).to have_content("Welcome to your account")
  end