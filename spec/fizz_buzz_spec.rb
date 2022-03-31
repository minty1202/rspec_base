require_relative '../ruby/fizz_buzz'

RSpec.describe FizzBuzz do
  before do
    @fizz_buzz = FizzBuzz.new
  end

  describe '#call' do
    context '3の倍数' do
      example 'fizzが出力される' do
        expect {@fizz_buzz.call(3)}.to output("fizz\n").to_stdout
      end
    end
  end
end


# describe 'テストの対象' do
#   context '特定の条件の内容' do
#     example 'アウトプットの内容' do ## it 'アウトプットの内容' do でもよい
#       ...テスト処理...
#     end
#   end
# end

# example か it は企業による 正直どちらでもよい
# https://qiita.com/jnchito/items/8766405c06690cfcb32b

# 正直書き方は後々覚えていけばいいのできれいである必要はないです。
# 重要なのは何を意識して書いたか
# 以下を意識して書けるとよい
####
# カバレッジ
# 境界値
# 正常系
# 考えうる異常系
####
# ここら辺は企業がどれだけテストにコストをかけるかによる。最低限正常系をすべて網羅してるとよい
# simplecov というカバレッジを測定するツールがある。自身が書いた部分はカバーできているか確認するのも一つ