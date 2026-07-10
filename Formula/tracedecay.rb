class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.52.tar.gz"
  sha256 "ebd944a7416eb6054e1f3099111d2212b531e3d976d247812f4992a9211847ac"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.52"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d916991d780c05a525fcdd5f579701911c5e018a1c8410c98b01cb3e5553a16b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "648b84d18184f48a5d5d361e961d145565ac9f0554f0297d7b3d7baa3f37618b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
