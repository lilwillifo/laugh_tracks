RSpec.describe Comedian do
  describe 'Validations' do
      it 'is invalid without a name' do
        comedian = Comedian.create

        expect(comedian).to_not be_valid
      end
    end
end
