require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    
    it "should have content '9GAG - Just For Fun'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('9GAG - Just For Fun')
    end

    it "should have base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("9GAG - Just For Fun")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "FAQ page" do

  	it "should have content 'FAQ'" do
  		visit '/static_pages/faq'
  		expect(page).to have_content('FAQ')
  	end

  	it "should have title '9GAG - Just For Fun | FAQ'" do
  		visit '/static_pages/faq'
  		expect(page).to have_title("9GAG - Just For Fun | FAQ")
  	end
  end

  describe "Privacy page" do

  	it "should have content 'Privacy'" do
  		visit '/static_pages/privacy'
  		expect(page).to have_content('Privacy')
  	end

  	it "should have title '9GAG - Just For Fun | Privacy'" do
  		visit '/static_pages/privacy'
  		expect(page).to have_title("9GAG - Just For Fun | Privacy")
  	end
  end

  describe "Contact page" do

  	it "should have content 'Contact Us'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact Us')
  	end

  	it "should have title '9GAG - Just For Fun | Contact Us'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("9GAG - Just For Fun | Contact Us")
    end
  end

  describe "About page" do

    it "should have content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have title '9GAG - Just For Fun | About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("9GAG - Just For Fun | About Us")
    end
  end
end
