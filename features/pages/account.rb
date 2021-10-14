class Account < SitePrism::Page

    set_url '/index.php?controller=authentication&back=my-account'

    element :email, :id, 'email_create'
    element :btenter, :id, 'SubmitCreate'
    element :emaillogin, :id, 'email'
    element :passwordlogin, :id, 'passwd'
    element :btlogin, :id, 'SubmitLogin'

    def create

        email.set $myemail
        btenter.click

    end

    def login

        emaillogin.set $myemail
        passwordlogin.set $mypass
        btlogin.click
        
    end
    
end