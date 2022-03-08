## usersテーブル
| Column                | Type              | Option                         |
| --------------------- | ----------------- | ------------------------------ |
| nickname              | string            | null: false                    |
| email                 | string            | null: false, unique: true      |
| encrypted_password    | string            | null: false                    |
### Association
- has_many :cards

## cardsテーブル
| Column                | Type              | Option                         |
| --------------------- | ----------------- | ------------------------------ |
| card_name             | string            | null: false                    |
| category_id           | integer           | null: false                    |
| shop                  | string            |                                |
| expiration            | date              | null: false                    |
| user                  | references        | null: false, foreign_key: true |
### Association
- belongs_to :user