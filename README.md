my-marp-slides
===

スライドを [Marp](https://marp.app/) でサクッと書いてシュッと公開したい時用のリポジトリ。

## 準備

``` sh
npm i
```

## プレビュー

``` sh
npx marp --bespoke.transition -ps .
```

※ `.org` は、 `.md` を生成する為に [Org Mode](https://www.orgmode.org/index.html) を使う場合もある、というだけなので無くてもいい。

## 最終成果物生成

サブディレクトリに `PITCHME.md` を作って `make` すると、
`docs` 以下に公開用 HTML が作成されるので、 GitHub Pages なりで公開出来る。
また `pdfs` 以下には PDF も作成される。

画像は `PITCHME.md` を配置するディレクトリに `assets` というディレクトリを作成して置く。
