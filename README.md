# Null Test Project

このプロジェクトは、異なるコンパイラや環境（`newlib`, `alpine`, `mingw`, `clang16`, `tinycc` など）でC言語のコード（`srcs/test.c`）をテストするためのものです。

## 実行方法

`run_all.sh` スクリプトを実行すると、すべてのテストが実行されます。

```bash
./run_all.sh
```

**注意:** テストの実行中に `core dumped` で終了した場合は、`Ctrl + \` (バックスラッシュ) で強制終了できます。

## ディレクトリ構造

- `srcs/test.c`: テスト対象のC言語のソースコード
- `run_all.sh`: 全てのテストを実行するシェルスクリプト
- `dockerfiles/`: 各コンパイラ/環境用のDockerファイルが格納されています。
- `logs/`: 実行ログが保存されるディレクトリ 