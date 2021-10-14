class Home < SitePrism::Page

    set_url '/index.php'

    element :btsignin, :xpath, "//a[@title='Log in to your customer account']"
    element :btlogout, :xpath, "//a[@title='Log me out']"
    element :searchbox, :id, 'search_query_top'
    element :btpesquisar, :xpath, "//button[@name='submit_search']"
    element :btaddtocart, :xpath, "//a[@data-id-product='1']"
    element :proceedtocheckout, :xpath, "//a[@title='Proceed to checkout']"

end