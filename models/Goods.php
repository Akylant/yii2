<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_goods".
 *
 * @property integer $id
 * @property string $name
 * @property integer $count
 * @property string $email_provider
 * @property integer $provider_id
 * @property string $date_create
 */
class Goods extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_goods';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'provider_id'], 'required'],
            [['count', 'provider_id'], 'integer'],
            [['date_create'], 'safe'],
            [['name', 'email_provider'], 'string', 'max' => 255],
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
            'count' => Yii::t('app', 'Count'),
            'email_provider' => Yii::t('app', 'Email Provider'),
            'provider_id' => Yii::t('app', 'Provider ID'),
            'date_create' => Yii::t('app', 'Date Create'),
        ];
    }
}
