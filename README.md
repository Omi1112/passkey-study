# passkey-study

パスキー(WebAuthn / FIDO2)について学習・検証するためのリポジトリです。

## 目的

- パスキーの仕組み(公開鍵認証、チャレンジ・レスポンス)を理解する
- WebAuthn API を使った登録・認証フローを実装して試す
- 低レイヤのgem・Ruby標準機能(`openssl`, `cbor`, `base64`)を組み合わせて自作・学習する

## 技術スタック

- Ruby on Rails 8.1
- SQLite3
- CBOR (`cbor` gem)
- OpenSSL (Ruby 標準ライブラリ)
- Base64 (Ruby 標準ライブラリ)

## 参考資料

- [WebAuthn 仕様 (W3C)](https://www.w3.org/TR/webauthn-3/)
- [passkeys.dev](https://passkeys.dev/)
- [FIDO Alliance](https://fidoalliance.org/passkeys/)
