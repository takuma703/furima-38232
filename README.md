# テーブル設計

## usersテーブル

|Column               |Type   |Options     |
| ------------------- | ----- | ---------- |
|nickname             |string |null:false  |
|email                |string |null:false  |
|password 　　　　　　  |string |null:false  |
|first_name           |string |null:false  |
|family_name          |string |null:false  |
|fist_name_kana       |string |null:false  |
|family_name_kana     |string |null:false  |
|birthday             |date   |null:false  |

### Association
has_many :items
has_many :purchase_records

## itemsテーブル

|Column                 |Type    |Options     |
| --------------------- | ------ | ---------- |
|name                    |string |null:false  |
|introduction            |text   |null:false  |
|category_id             |integer|null:false  |
|item_condition_id       |integer|null:false  |
|delivery_charge_payer_id|integer|null:false  |
|prefecture_id           |integer|null:false  |
|price                   |integer|null:false  |
|shipping_date_id        |integer|null:false  |
|user                    |references|null:false ,foreign_key :true|

### Association
belongs_to :user
has_one :purchase_record

## purchase_recordテーブル

|Column                 |Type       |Options                        |
| --------------------- | --------- | ----------------------------- |
|user                   |references |null:false, foreign_key :true  |
|item                   |references |null:false, foreign_key :true  |

### Association
belongs_to :user
belongs_to :item
has_one :sending_destination

## sending_destinationsテーブル

|Column         |Type   |Options     |
| ------------- | ----- | ---------- |
|post_code      |string |null:false  |
|prefecture_id  |integer|null:false  |
|city           |string |null:false  |
|house_number   |string |null:false  |
|building_name  |string |            |
|phone_number   |string |null:false ,unique:true  |
|purchase_record |references|null:false, foreign_key :true|

### Association
belongs_to :purchase_record