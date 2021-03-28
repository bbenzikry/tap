class LuaLanguageServer < Formula
  desc ""
  homepage ""
  license ""
  head "https://github.com/sumneko/lua-language-server.git"

  depends_on "ninja" => :build

  def install
    opoo "This is a private tap, use at your own peril"
    system "cd 3rd/luamake && ninja -f ninja/macos.ninja && cd ../.. && ./3rd/luamake/luamake/luamake rebuild"
  end
end
