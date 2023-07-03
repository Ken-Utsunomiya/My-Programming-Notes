# Database Design

### 1. データベースの目的の定義
- どういう風に使われるのか
- 誰が使うのか
- どのくらいの規模なのか

### 2. 必要な情報の整理
- 表現する対象の要素をリストアップ
- 要素がそれぞれ、いつ、誰に、どんな使われ方をするのかを想像する

### 3. 情報をテーブルに分割
- 主要なエンティティとその要素を抜き出す
- 一度使われた情報は二度と使わないように
- テーブルを最小になるようにさらに分割

### 4. 各エンティティの要素をカラムに
- 整理した情報をカラムに変換
- サーチ、ソート、フィルターなどの操作が必要な場合は、カラムを分割して各々に操作が適用できるように
- 計算結果のデータは保存しない
- １つのフィールドには最小の情報を保存