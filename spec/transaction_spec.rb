describe 'transaction' do
  describe 'when creating a new transaction' do
    it 'the user can deposit an amount' do
      transaction = Transaction.new
      expect(transaction.amount).to eq(0)
    end
  end
end
