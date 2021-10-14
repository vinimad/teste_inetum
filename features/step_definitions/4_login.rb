Quando('faço o login') do
    @home_page = Home.new
    @account_page = Account.new
    @home_page.load
    @home_page.btsignin.click
    @account_page.login
    sleep 1
  end
  
  Então('Verifico se o login foi concluido com sucesso') do
    expect(page).to have_content("Welcome to your account")
  end