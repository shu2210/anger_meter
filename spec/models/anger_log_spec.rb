require 'rails_helper'

RSpec.describe AngerLog, type: :model do
  describe 'title' do
    let(:log) { build(:anger_log, title: title) }
    before { log.valid? }

    context '空白の場合' do
      let(:title) { '' }
      it { expect(log.errors[:title]).not_to be_empty }
    end

    context '長すぎる場合' do
      let(:title) { Faker::Lorem.characters(256) }
      it { expect(log.errors[:title]).not_to be_empty }
    end
  end

  describe 'thought' do
    let(:log) { build(:anger_log, thought: thought) }
    before { log.valid? }

    context '空白の場合' do
      let(:thought) { '' }
      it { expect(log.errors[:thought]).not_to be_empty }
    end

    context '長すぎる場合' do
      let(:thought) { Faker::Lorem.characters(256) }
      it { expect(log.errors[:thought]).not_to be_empty }
    end
  end

  describe 'feeling' do
    let(:log) { build(:anger_log, feeling: feeling) }
    before { log.valid? }

    context '空白の場合' do
      let(:feeling) { '' }
      it { expect(log.errors[:feeling]).not_to be_empty }
    end

    context '長すぎる場合' do
      let(:feeling) { Faker::Lorem.characters(256) }
      it { expect(log.errors[:feeling]).not_to be_empty }
    end
  end

  describe 'anger_stage' do
    let(:log) { build(:anger_log, anger_stage: anger_stage) }
    before { log.valid? }

    context '空白の場合' do
      let(:anger_stage) { '' }
      it { expect(log.errors[:anger_stage]).not_to be_empty }
    end

    context '10の場合' do
      let(:anger_stage) { 10 }
      it { expect(log).to be_valid }
    end

    context '10より大きい場合' do
      let(:anger_stage) { 11 }
      it { expect(log.errors[:anger_stage]).not_to be_empty }
    end

    context '0の場合' do
      let(:anger_stage) { 0 }
      it { expect(log).to be_valid }
    end

    context '0より小さい場合' do
      let(:anger_stage) { -1 }
      it { expect(log.errors[:anger_stage]).not_to be_empty }
    end
  end

  describe 'action' do
    let(:log) { build(:anger_log, action: action) }
    before { log.valid? }

    context '空白の場合' do
      let(:action) { '' }
      it { expect(log.errors[:action]).not_to be_empty }
    end

    context '長すぎる場合' do
      let(:action) { Faker::Lorem.characters(256) }
      it { expect(log.errors[:action]).not_to be_empty }
    end
  end

  describe 'result' do
    let(:log) { build(:anger_log, result: result) }
    before { log.valid? }

    context '空白の場合' do
      let(:result) { '' }
      it { expect(log.errors[:result]).not_to be_empty }
    end

    context '長すぎる場合' do
      let(:result) { Faker::Lorem.characters(256) }
      it { expect(log.errors[:result]).not_to be_empty }
    end
  end

  describe 'angered_at' do
    let(:log) { build(:anger_log, angered_at: angered_at) }
    before { log.valid? }

    context '空白の場合' do
      let(:angered_at) { '' }
      it { expect(log.errors[:angered_at]).not_to be_empty }
    end
  end
end
