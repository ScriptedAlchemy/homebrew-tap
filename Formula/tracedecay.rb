class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "dbc2dd22f2dad6269ac456ed34aef974f8711c6edd1c4ea36145f4d27c6247a2"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d9ee94abba95365f0de89ea00182349d6299b060a906efe3b24d3da5f5876c5e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fe66268185292b4d3698b6ce4f64beddfaed6194a3c5280633c3980246e26b32"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
