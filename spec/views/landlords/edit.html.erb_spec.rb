require 'rails_helper'

RSpec.describe "landlords/edit", :type => :view do
  before(:each) do
    @landlord = assign(:landlord, Landlord.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :telephone_number => "MyString",
      :email_address => "MyString",
      :mailing_address => "MyString"
    ))
  end

  it "renders the edit landlord form" do
    render

    assert_select "form[action=?][method=?]", landlord_path(@landlord), "post" do

      assert_select "input#landlord_first_name[name=?]", "landlord[first_name]"

      assert_select "input#landlord_last_name[name=?]", "landlord[last_name]"

      assert_select "input#landlord_telephone_number[name=?]", "landlord[telephone_number]"

      assert_select "input#landlord_email_address[name=?]", "landlord[email_address]"

      assert_select "input#landlord_mailing_address[name=?]", "landlord[mailing_address]"
    end
  end
end
