Quando('adiciono um produto ao carrinho') do
    @home_page = Home.new
    @pagamento_page = Pagamento.new
    @home_page.load
    @home_page.btaddtocart.click
    @home_page.proceedtocheckout.click
    sleep 1
    @pagamento_page.pagamento
    sleep 1
end
  
  Então('Verifico se o produto foi adicionado e direcionado até o step de pagamento com sucesso') do
    expect(page).to have_content("Pay by bank wire")
      
end