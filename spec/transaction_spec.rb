describe 'transaction' do
  describe 'new' do
    it 'user can deposit an amount' do
      transaction = Transaction.new
      expect(transaction.amount).to exist
    end
  end
end
