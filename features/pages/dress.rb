class Dress < SitePrism::Page

    set_url '/index.php?id_category=9&controller=category'

    element :cartdress, :css, "div.button-container > a.button.ajax_add_to_cart_button.btn.btn-default"
    element :continuetoshop, :xpath, "//span[@title='Continue shopping']"
    element :dress1, :css, "#block_top_menu > ul > li:nth-child(2) > a"
    element :dress2, :xpath, "//a[@title='Evening Dresses']"

    def adicionarprodutos

        cartdress.click
        continuetoshop.click
        dress1.hover
        dress2.click
        cartdress.click
        
    end
 
end