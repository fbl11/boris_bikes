require 'bike'

describe Bike do
	it { should respond_to(:working?) }
    it { is_expected.to respond_to(:report_broken) }


  describe '#report_broken' do
		it 'reports a bike as broken' do
			expect(subject.report_broken).to eq(subject.is_broken==true)
		end
  end

end