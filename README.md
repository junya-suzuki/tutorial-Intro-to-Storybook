# tutorial-Intro-to-Storybook

## このリポジトリの目的

2024 年 11 月時点での最新の Storybook を学び、コンポーネント管理のための指標を策定するための学習をする

## チュートリアルオリジナルページ

https://storybook.js.org/tutorials/intro-to-storybook/

## 環境

Docker-compose

## 起動方法

```bash
$ docker compose up
```

ブラウザで http://localhost:6006/ を開いてください。

## コンテナ内でコマンドを実行する方法

```bash
$ docker compose exec storybook bash
# yarn add --dev {追加したいアドオンなど}
```

## Chapter4 Screens 注意事項

```
$ yarn test-storybook --watch
```

とあるが、これだとテストが実行されません。

```
$ yarn test-storybook --watchAll
```

こちらのコマンドでテストが実行できます。

## Chapter5 Deploy 注意事項

Github の secrets に `CHROMATIC_PROJECT_TOKEN` を追加する必要がある。

Github のリポジトリを開き、  
`Settings` -> `Secrets and variables` -> `Actions` -> `Repository secrets`  
へ `CHROMATIC_PROJECT_TOKEN` として Chromatic の project_token を追加する。

Chromatic の project_token は  
`Manage` -> `Configure` -> `PROJECT` で確認可能。
