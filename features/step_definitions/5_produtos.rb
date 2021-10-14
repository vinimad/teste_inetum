Quando('adiciono os produtos ao carrinho') do
    @dress_page = Dress.new
    @dress_page.load
    @dress_page.adicionarprodutos
    sleep 1
  end
  
  Então('Verifico se o produtos foram adicionados com sucesso') do
    expect(page).to have_content("Product successfully added to your shopping cart")
  end