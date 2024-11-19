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
