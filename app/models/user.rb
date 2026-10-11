class User < ApplicationRecord
  has_many :passkey_credentials, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :display_name, presence: true
  validates :webauthn_id, presence: true, uniqueness: true

  before_validation :generate_webauthn_id, on: :create

  private

  # WebAuthn仕様で推奨されている。 ユーザ固有の不変なバイナリデータを作成する。ここでは、ランダムな16バイトの16進数文字列を生成している。
  def generate_webauthn_id
    self.webauthn_id ||= SecureRandom.hex(16)
  end
end
