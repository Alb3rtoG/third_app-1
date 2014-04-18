require 'spec_helper'

describe "UserPages" do
	subject { page }
	describe "Sign up page" do
		before { visit signup_path }
		
		it { should have_selector('h1', text: 'sign up') }
		it { should have_selector('title', text: 'Sign up') }
	end
end
