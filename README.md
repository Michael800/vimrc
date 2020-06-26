## Swift Syntax highlightの設定手順

1. Apple公式GithubからSwiftリポジトリをCloneする
```sh
$ mkdir ~/.vim/bundle/manual
$ cd ~/.vim/bundle/manual

$ git clone git@github.com:apple/swift.git apple-swift
```

2. utils/vimのみ必要なので取り出す
```
$ cd apple-swift
$ git filter-branch --subdirectory-filter utils/vim HEAD
```

3. vimを起動して、NeoBundleのプラグインインストールが走れば完了


## Ruby コード補完のための設定手順
rsenseをインストールする（neocomplcache-rsense に必要）
```sh
$ gem install rsense
```
