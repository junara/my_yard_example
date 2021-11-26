# Namespace for Fuga customized modules.
module Fuga
  # YARDドキュメントを書くための練習
  #
  # 年齢を計算します
  # @see https://gist.github.com/chetan/1827484 YARD CHEATSHEET
  # @see https://morizyun.github.io/blog/yard-rails-ruby-gem-document-html/index.html Rails/Rubyドキュメントをキレイに生成するYARD、早見表付き！
  class Hoge
    # @param [Integer] age 年齢を入力する。1〜100
    # @param [TrueClass, FalseClass] younger 若作りしたい時はtrue
    # @return [Integer] 整数値が返る
    #
    # 年齢から月を計算する
    #
    # 12を掛け合わせるだけです。
    #
    # @see https://github.com/junara/my_yard_example 公式URL
    #
    #
    #
    # @raise [ArgumentError] 確率1/6 でエラーとなる
    # @example 普通の計算
    #   age_to_month(20, younger: false)
    # @example 若作りの計算
    #   age_to_month(20, younger: true)
    # @note 小数点は返さない
    def age_to_month(age, younger: true)
      raise ArgumentError, '運悪く、エラーがおきました' if (1..6).to_a.sample == 3

      if younger
        (age * 12) - (10 * month)
      else
        age * 12
      end
    end

    # 標準出力処理のみ行う。なにかを返すことを期待しないmethod
    # @return [void] なにも返さない
    def pp_method(str)
      puts str
    end
  end
end
