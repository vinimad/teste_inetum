Quando('finalizo a encomenda') do
    @dress_page = Dress.new
    @pagamento_page = Pagamento.new
    @dress_page.load
    @dress_page.adicionarprodutos
    @pagamento_page.proceedtocheckout.click
    @pagamento_page.finalizar
    sleep 1
  end
  
  Então('Verifico se a encomenda foi finalizada com sucesso') do
    expect(page).to have_content("Your order on My Store is complete.")
  end