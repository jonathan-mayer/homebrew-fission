class Fission < Formula
  desc "Fission CLI for Kubernetes serverless functions"
  homepage "https://fission.io"
  version "1.25.0"
  
  on_linux do
    url "https://github.com/fission/fission/releases/download/v#{version}/fission-v#{version}-linux-amd64"
    sha256 "6ce8dfaba37e8908be8a109907bd869dfaccd03073e175a03ff29aebf30efcd6" # to be filled by automation
  end

  def install
    bin.install "fission-v#{version}-linux-amd64" => "fission"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fission version")
  end
end
