class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.66.tar.gz"
  sha256 "e98d6b618885f937419fb72849cdb5702a6fdbf50032af48c3019834759fdf3e"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.66"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "70e710332f85e376b110e9c1a1033ac2de6af4fa61f82ea193aa18920afedf95"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "29493eb839788270495a412c16b3be2b5ba9a49b8fe95681d6ca991c96d26c5c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
