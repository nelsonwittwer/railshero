require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  shared_examples_for "all static pages" do
  	it { should have_selector('title', text: full_title(page_title)) }
  end
	
  describe "Home page" do
  	before {visit root_path }
  	let(:page_title){ '' }
  	
  	it_should_behave_like "all static pages"
  	
  end
  
  describe "About page" do
  	before {visit about_path }
  	let(:page_title){ '' }
  	
  	it_should_behave_like "all static pages"
  end
  
  describe "FAQ page" do
  	before {visit faq_path }
  	let(:page_title){ '' }
  	
  	it_should_behave_like "all static pages"
  end
  
  it "should have the right links on the layout" do
  	visit root_path
  	click_link "about"
  	page.should have_selector 'title', text: full_title('About')
  	click_link "FAQ"
  	page.should have_selector 'title', text: full_title('FAQ')
  	click_link "contact"
  	page.should have_selector 'title', text: full_title('Contact')
  end
  
  
  
end
