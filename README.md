# Jigokumimi Terraform

## 説明

音楽収集アプリ「Jigokumimi」のAWS構成をTerraform上で管理

## バージョン情報

| ツール･ミドルウェア名 | バージョン |
| --------------------- | ---------- |
| Terraform             | v0.12.24   |

## ディレクトリ構成

| ディレクトリ | 概要                                      |
| ------------ | ----------------------------------------- |
| ecr          | ECR関連のリソースを保存                   |
| iam          | IAM関連のリソースを保存                   |
| service      | ECSなどのサービスを提供するリソースを保存 |
| vpc          | VPC関連のリソースを保存                   |

## 構築手順

各ディレクトリ直下で以下を順に実行｡

1. Terraform 初期化

```bash
terraform init
```

1. Terraform 構文チェック

```bash
terraform plan
```

1. 環境構築実行

```bash
terraform apply
```

実行したディレクトリ以下に定義された各種リソースが構築･変更される｡

## 補足

RDSについては､Terraform上で管理するとapplyコマンド時にタイムアウトが発生する可能性があるため手動で作成している｡
