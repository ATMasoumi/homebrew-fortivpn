class FortivpnAutoconnect < Formula
  desc "🚀 Automated FortiVPN connection with 2FA OTP extraction from Messages app"
  homepage "https://github.com/ATMasoumi/fortivpn-autoconnect"
  url "https://github.com/ATMasoumi/fortivpn-autoconnect/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "374ca70312b04ae439e59c186ae985401ca3ee5fb4bdeb3e1e58f32affe8f0bf"
  license "MIT"

  depends_on "openfortivpn"
  depends_on "expect"

  def install
    bin.install "forti_connect.sh" => "fortivpn-autoconnect"
    bin.install "forti"
    bin.install "fortivpn-setup"
    bin.install "get_otp_code.scpt"
    etc.install "forticonfig.template"
    doc.install "README.md"
    doc.install "LICENSE"
  end

  def caveats
    <<~EOS
      Welcome to FortiVPN Auto-Connect! 🚀

      To get started:
        1. Run: fortivpn-setup
        2. Follow the interactive setup wizard
        3. Connect with: forti (or fortivpn-autoconnect)

      Required permissions:
        - Touch ID for sudo (recommended)
        - Full Disk Access for Terminal app
        - Messages app access for 2FA extraction

      Configuration will be stored in: ~/.fortivpn/

      For help and troubleshooting:
        https://github.com/ATMasoumi/fortivpn-autoconnect
    EOS
  end

  test do
    # Test that the main scripts are installed and executable
    assert_predicate bin/"fortivpn-autoconnect", :exist?
    assert_predicate bin/"fortivpn-setup", :exist?
    assert_predicate bin/"get_otp_code.scpt", :exist?
    
    # Test that help option works
    system "#{bin}/fortivpn-setup", "--help"
  end
end
