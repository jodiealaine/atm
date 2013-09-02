require_relative '../lib/user'
describe User do 
	let(:user) { User.new('Frank', 'Bishop') }
	it 'has a first name' do 
		expect(user.first_name).to eq 'Frank'
	end

	it "has a last name" do 
		expect(user.last_name).to eq 'Bishop'
	end

	it "has a full name" do 
		expect(user.name).to eq 'Frank Bishop'
	end
end