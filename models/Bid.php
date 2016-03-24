<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_bid".
 *
 * @property integer $id
 * @property string $name
 * @property string $adress
 * @property string $email
 * @property string $phone
 * @property string $date_create
 */
class Bid extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_bid';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'email', 'phone', 'date_create'], 'required'],
            [['date_create'], 'safe'],
            [['name', 'adress', 'email'], 'string', 'max' => 255],
            [['phone'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'adress' => Yii::t('app', 'Adress'),
            'email' => Yii::t('app', 'Email'),
            'phone' => Yii::t('app', 'Phone'),
            'date_create' => Yii::t('app', 'Date Create'),
        ];
    }
}
