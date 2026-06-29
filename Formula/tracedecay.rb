class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.16.tar.gz"
  sha256 "a05a32fc2641b8d98b238cf503bad2368a3a6481c4d3a9294b0ca0c0ef4466da"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.16"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f4606a4342cb438ae114f88fae86815b1d94bd963f55f1f1393a84e0e90b9dff"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "81b1726cf37f12859b4c16582732ffa17e61f5f53d042ffdd89e45701d674ac3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
