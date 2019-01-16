require 'spec_helper'

RSpec.describe Sugi do
  
  subject { Sugi.new.message(day) }

  context "毎月5日のメッセージ" do
    let(:day) { 5 }
    it { is_expected.to eq '今日はホットケーキ サービスデーです！ #八幡山 #ルポーゼすぎ' }
  end
  context "毎月15日のメッセージ" do
    let(:day) { 15 }
    it { is_expected.to eq '今日はホットケーキ サービスデーです！！ #八幡山 #ルポーゼすぎ' }
  end
  context "毎月25日のメッセージ" do
    let(:day) { 25 }
    it { is_expected.to eq '今日はホットケーキ サービスデーです！！！ #八幡山 #ルポーゼすぎ' }
  end
end
