# rspec について
# 以下のシリーズがわかりやすいです
# https://qiita.com/jnchito/items/42193d066bd61c740612

# 書き方
# RSpec.describe 検証内容(基本的にはClass名) do
#   it '検証内容の説明' do
#     expect(実行内容).to eq 期待する内容
#   end
# end

RSpec.describe '四則演算' do
  it '1 + 1 は 2 になること' do
    expect(1 + 1).to eq 2
  end
end

# expect(1 + 1).to eq 2
# は 1 + 1 は 2 であることを検証している

# マッチャについて
# https://qiita.com/jnchito/items/2e79a1abe7cd8214caa5


# include
RSpec.describe 'Array' do
  it '配列の中にhogeを含んでいること' do
    arr = ['hoge', 'fuga', 'piyo']
    expect(arr).to include 'hoge'
  end
end

# be_truthy
RSpec.describe 'method' do
  it 'trueを返却すること' do
    return_true = lambda { return true }
    expect(return_true.call).to be_truthy
  end
end