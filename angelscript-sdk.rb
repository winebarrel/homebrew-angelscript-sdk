class AngelscriptSdk < Formula
  homepage "http://www.angelcode.com/angelscript/"
  url "http://www.angelcode.com/angelscript/sdk/files/angelscript_2.31.0.zip"
  version "2.31.0"
  sha256 "269c94a9a6526b85c0d180657fa749d507cf791c07ed264a1126b6927e7d400d"


  def install
    cd "angelscript/projects/gnuc macosx" do
      lib.mkdir
      include.mkdir
      system "make"
      system "make", "LOCAL=#{prefix}", "install"
    end
  end
end
