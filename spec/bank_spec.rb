require_relative '../lib/bank'

describe Bank do 
  it 'returns the account of Frank' do 
  	user = double User
  	account = double :account
  	user.should_receive(:verify_pin?).with '1234'
  	bank = Bank.new({'Frank' => {user: user, account => account}})
  	bank.account_from('Frank','1234')
  end
end