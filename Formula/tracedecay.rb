class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.68.tar.gz"
  sha256 "530171970a82a1d788e2e29adcd3e0b19e64bf083f8bef55a2df274be72921df"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.68"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "38bab8e026447e70d57768194ec7cc6f603ef394137d20fe68bafb5b5123e864"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8ba72c254c080bd28e973dc6b5901e87ce38b6ec2bf4f1d4bec68bf14eab0afb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
