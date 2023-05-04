/* 会員情報 */
DROP TABLE IF EXISTS tb_user;
CREATE TABLE tb_user (
    user_no int(11) auto_increment NOT NULL   -- No
  , user_id varchar(200) NOT NULL   -- ユーザーID
  , user_name varchar(200) NOT NULL   -- ユーザー名
  , mail_address varchar(200) NOT NULL   -- メールアドレス
  , password varchar(200) NOT NULL   -- パスワード
  , type int(1) NOT NULL  DEFAULT 1   -- 種別
  , birth_date int(8)    -- 生年月日
  , gender int(1)    -- 性別
  , blood_type int(1)    -- 血液型
  , job int(2)    -- 職業
  , post _code int(7)    -- 郵便番号
  , prefectures int(2)    -- 都道府県
  , municipality varchar(200)    -- 市町村
  , address varchar(200)    -- 番地
  , building_name varchar(200)    -- 建物名
  , registered_date datetime   DEFAULT CURRENT_TIMESTAMP   -- 登録日時
  , update_date datetime   DEFAULT CURRENT_TIMESTAMP   -- 更新日時
  , PRIMARY KEY (user_no)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;
/* フードトラック */
DROP TABLE IF EXISTS tb_foodtrack;
CREATE TABLE tb_foodtrack (
    foodtrack_no int(11) auto_increment NOT NULL   -- No
  , foodtrack_id varchar(200) NOT NULL   -- フードトラックID
  , foodtrack_name varchar(200) NOT NULL   -- フードトラック名
  , food_type int(2) NOT NULL   -- 提供物種類
  , station varchar(200) NOT NULL   -- 最寄り駅
  , access_info varchar(200) NOT NULL   -- 位置情報
  , user_no int(11) NOT NULL   -- 店舗主ユーザーNo
  , tel_no int(11) NOT NULL   -- 電話番号
  , comment varchar(200)    -- コメント
  , image varchar(200)    -- 写真
  , category varchar(200)    -- カテゴリ
  , point int(11)   DEFAULT 0   -- 評価数
  , registered_date datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP   -- 登録日時
  , update_date datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP   -- 更新日時
  , PRIMARY KEY (foodtrack_no)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;
/* レビュー情報 */
DROP TABLE IF EXISTS tb_review;
CREATE TABLE tb_review (
    review_no int(11) auto_increment NOT NULL   -- No
  , review_title varchar(200)    -- タイトル
  , review_content varchar(200)    -- 内容
  , review_user int(11)    -- 投稿者
  , foodtrack_no int(11) NOT NULL   -- フードトラックNo
  , point int(1)   DEFAULT 0   -- 評価数
  , registered_date datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP   -- 登録日時
  , update_date datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP   -- 更新日時
  , PRIMARY KEY (review_no)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;