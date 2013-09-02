require_relative '../lib/user'
describe User do 
	let(:user) { User.new('Frank', 'Bishop', '1234') }

	it 'has a first name' do 
		expect(user.first_name).to eq 'Frank'
	end

	it "has a last name" do 
		expect(user.last_name).to eq 'Bishop'
	end

	it "has a full name" do 
		expect(user.name).to eq 'Frank Bishop'
	end

	it "can verify the pin" do 
		expect(user.verify_pin?('1234')).to be_true
	end

	it "cannot verify the pin" do 
		expect(user.verify_pin?('1235')). to be_false
	end
end