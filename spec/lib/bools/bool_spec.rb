require 'spec_helper'

class Foo
  include Bools

  bool :success?, true
  bool :failure?, false
  bool :evaluates_true?, 42
  bool :evaluates_false?, nil
end

module Bools
  RSpec.describe Bool do
    let(:model) { Class.new(BasicObject) }
    let(:name) { :success? }
    let(:value) { true }

    describe '#define' do
      subject(:define) { described_class.new(model, name, value).define }

      it 'returns the method defined' do
        expect(define).to eql(:success?)
      end

      it 'returns the value' do
        expect(Foo.new.success?).to be true
      end

      it 'returns the value' do
        expect(Foo.new.failure?).to be false
      end

      it 'returns the evaluated value' do
        expect(Foo.new.evaluates_true?).to be true
      end

      it 'returns the evaluated value' do
        expect(Foo.new.evaluates_false?).to be false
      end
    end
  end
end
