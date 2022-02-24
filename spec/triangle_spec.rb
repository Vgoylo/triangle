require_relative '../lib/triangle'
require 'pry'

RSpec.describe "Triangle" do
  describe '#valid?' do
    context 'triangle is valid' do
      let(:triangle) { Triangle.new(12, 5, 16) }
      it 'is valid' do
        expect(triangle.valid?).to be_truthy
      end

      context 'float numbers' do
        let(:triangle) { Triangle.new(12.5, 5.4, 16.1) }

        it 'is valid' do
          expect(triangle.valid?).to be_truthy
        end
      end
    end

    context 'triangle is invalid' do
      let(:triangle) { Triangle.new(12, 5, 60) }

      it 'invalid' do
        expect(triangle.valid?).to be_falsey
      end

      context 'zero numbers' do
        let(:triangle) { Triangle.new(0, 0, 0) }
        it 'invalid' do
          expect(triangle.valid?).to be_falsey
        end
      end

      context 'negative numbers' do
        let(:triangle) { Triangle.new(12, -2, 16) }
        it 'is invalid' do
          expect(triangle.valid?).to be_falsey
        end
      end

      context 'input string' do
        let(:triangle) { Triangle.new(12, '', 16) }

        it 'is invalid' do
          expect(triangle.valid?).to be_falsey
        end
      end

      context 'empty parameter' do
        let(:triangle) { Triangle.new(12, 16) }

        it 'is invalid' do
          expect(triangle.valid?).to be_falsey
        end
      end

      context 'input symbol' do
        let(:triangle) { Triangle.new(12, :!, 16) }

        it 'is invalid' do

          expect(triangle.valid?).to be_falsey
        end
      end
    end


  end

  # describe '#format' do
  #   context 'valid vormat' do
  #     let(:triangle) { Triangle.new(12, 4, 15) }
  #     #let(:correct_number_format) { Triangle.new(12, 4, 15) }

  #     it 'returns number with correct format' do
  #       expect(triangle.format).to be_truthy
  #     end
  #   end
  # end
end
