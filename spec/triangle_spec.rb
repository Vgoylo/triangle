require_relative '../lib/triangle'

RSpec.describe "triangle" do
  describe '#valid?' do
    let(:triangle) { Triangle.new(12, 5, 16) }

    context 'triangle is valid' do
      it 'is valid' do
        expect(triangle.valid?).to be_truthy
      end
    end
  end

  describe '#valid?' do
    let(:triangle) { Triangle.new(12, 5, 60) }

    context 'triangle is not valid' do
      it 'not valid' do
        expect(triangle.valid?).to be_falsey
      end
    end
  end
end
