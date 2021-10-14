class Registro < SitePrism::Page

    set_url '/index.php?controller=authentication&back=my-account#account-creation'

    element :title, :xpath, "//div[@id='uniform-id_gender1']"
    element :firstname, :id, 'customer_firstname'
    element :lastname, :id, 'customer_lastname'
    element :password, :id, 'passwd'
    element :daybirth, :id, "uniform-days"
    element :days, :css,  "#days > option:nth-child(4)"
    element :monthbirth, :id, "uniform-months"
    element :months, :css, "#months > option:nth-child(9)"
    element :yearbirth, :id, "uniform-years" 
    element :years, :css, "#years > option:nth-child(17)"
    element :newslettercheck, :id, 'uniform-newsletter'
    element :offercheck, :id, 'uniform-optin'
    element :company, :id, 'company'
    element :address1, :id, 'address1'
    element :address2, :id, 'address2'
    element :city, :id, 'city'
    element :state, :id, "uniform-id_state"
    element :selectstate, :css, "#id_state > option:nth-child(6)"
    element :zipcode, :id, 'postcode'
    element :country, :id, "uniform-id_country"
    element :selectcountry, :css, "#id_country > option:nth-child(2)"
    element :addinfo, :id, 'other'
    element :homephone, :id, 'phone'
    element :mobilephone, :id, 'phone_mobile'
    element :btregister, :id, 'submitAccount'


    def registrar

        title.click
        firstname.set (Faker::Name.name)
        lastname.set (Faker::Name.name)
        password.set $mypass
        daybirth.click
        days.click
        monthbirth.click
        months.click
        yearbirth.click
        years.click
        newslettercheck.click
        offercheck.click
        company.set (Faker::Company.name)
        address1.set (Faker::Address.street_name)
        address2.set (Faker::Address.secondary_address)
        city.set (Faker::Address.city)
        state.click
        selectstate.click
        zipcode.set (Faker::Number.number(digits: 5))
        country.click
        selectcountry.click
        addinfo.set (Faker::Lorem.sentence(word_count: 5))
        homephone.set (Faker::Number.number(digits: 9))
        mobilephone.set (Faker::Number.number(digits: 9))
        btregister.click

    end
  
end