# -*- coding: utf-8 -*-
def イコール確認(期待値, 実行値)
  if 期待値==実行値
    return true
  else
    return false
  end
end

def あいさつ(名前)
  return "こんにちは, #{名前}．"
end

puts あいさつ("西谷先生")

puts イコール確認("こんにちは, 西谷先生．",あいさつ("西谷先生"))
puts イコール確認("こんにちは, 西谷先生．",あいさつ("西谷"))

