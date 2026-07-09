class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.41.tar.gz"
  sha256 "e2a791d31ffa7940eef83ec3a0543a04716953768e6a46c77993497dde543e28"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.41"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "88d35f3dab8038b24d7afce668799fa4eaa7346e446ab2efb6f177b820a55e09"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "426a4c90239f74f783eb6773a3f7821d78e16c91a6973495eaa89c7bea534b37"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
