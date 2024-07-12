# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe '#set_uuid' do
    subject(:valid?) { todo.valid? }

    let(:todo) { build :todo, uuid: }

    context 'uuid が指定されている場合' do
      let(:uuid) { Faker::Internet.uuid }

      it { is_expected.to be_truthy }

      it '指定された uuid が入る' do
        valid?
        expect(todo.uuid).to eq uuid
      end
    end

    context 'uuid が指定されていない場合' do
      let(:uuid) { nil }

      it { is_expected.to be_truthy }

      it 'ランダムな uuid が入る' do
        valid?
        expect(todo.uuid).to be_present
      end
    end
  end
end
