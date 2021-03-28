---
theme: gaia
paginate: true
_paginate: false
class: lead
---
<style>
section {
  background: white;
}
</style>

<!-- headingDivider: 1 -->


# <!--fit-->org-mode でスライド書きたい

yewton


# [PlantUML](https://plantuml.com/) を埋め込めるのがデカい

普通に書くと、 `![img]()` になるので、 [Marp の機能](https://marpit.marp.app/image-syntax) は使えない。
そのまま表示するだけで事足りる場合はこれでも良い。

![img](assets/sequence.png)


# Marp の機能を使いたい場合

<!-- _class: -->

明示的に `eval` してファイル生成だけはしておいて、 `:exports none` にしてエクスポート対象外にする。

その上で、 `@@html:![bg contains]()@@` のように参照する。

![bg right:33% contain](assets/class.png)


# org-download との相性も良い

![img](assets/2021-03-29_00-00-45_screenshot.png)

Photo by [Kaboompics .com](https://www.pexels.com/@kaboompics?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels) from [Pexels](https://www.pexels.com/photo/geometric-decoration-5836/?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels)


# Marp の機能を使いたい場合

<!-- _class: -->

* PlantUML の場合と同様、 org-mode で画像ファイルリンクを設定すると `![img]()` で固定される
* `@@html:![bg contain]()@@` のようにインラインHTMLで何とかする

![bg contain opacity blur](assets/2021-03-29_00-00-45_screenshot.png)


# <!--fit-->終わり

