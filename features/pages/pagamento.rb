class Pagamento < SitePrism::Page

    set_url '/index.php?controller=order'
    
    element :proceedtocheckout, :xpath, "//a[@title='Proceed to checkout']"
    element :processadress, :xpath, "//button[@name='processAddress']"
    element :processcarrier, :xpath, "//button[@name='processCarrier']"
    element :agreeterms, :id, 'uniform-cgv'
    element :paywithbank, :xpath, "//a[@title='Pay by bank wire']"
    element :confirmorder, :css, "#cart_navigation > button > span"

    def pagamento

        @account_page = Account.new
        proceedtocheckout.click
        @account_page.login
        processadress.click
        agreeterms.click
        processcarrier.click
        
    end

    def finalizar

        @account_page = Account.new
        proceedtocheckout.click
        @account_page.login
        processadress.click
        agreeterms.click
        processcarrier.click
        paywithbank.click
        confirmorder.click
        
    end
    
end