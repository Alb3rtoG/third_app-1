require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    before {visit root_path}

    it {should have_selector("H1", text:'third App')}
    it {should have_selector("title", text:'Home Page')}
  end
 describe "Help page" do
    before {visit help_path}

    it {should have_selector("H1", text:'help page')}
    it {should have_selector("title", text:'help Page')}
  end
   describe "About Us page" do
      before {visit about_path}

    it {should have_selector("H1", text:'about Us')}
    it {should have_selector("title", text:'About Us')}
  end
  describe "About Us page" do
      before {visit contact_path}

    it {should have_selector("H1", text:'Contatc Us')}
    it {should have_selector("title", text:'Contatc Page')}
  end
  it "should have the correct links" do
    visit root_path
    click_link "About"
    page.should. have_selelctor 'title', text: 'About us'
    click_link "Help"
    page.should. have_selelctor 'title', text: 'Help'
    click_link "Contact"
    page.should. have_selelctor 'title', text: 'Contact'
    click_link "Home"
    click_link "Sign up Now!"
    page.should. have_selelctor 'title', text: 'Sign up'

  end
end

