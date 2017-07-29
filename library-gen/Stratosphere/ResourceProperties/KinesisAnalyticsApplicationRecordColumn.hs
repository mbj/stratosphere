{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationRecordColumn where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for KinesisAnalyticsApplicationRecordColumn.
-- See 'kinesisAnalyticsApplicationRecordColumn' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationRecordColumn =
  KinesisAnalyticsApplicationRecordColumn
  { _kinesisAnalyticsApplicationRecordColumnMapping :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationRecordColumnName :: Val Text
  , _kinesisAnalyticsApplicationRecordColumnSqlType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationRecordColumn where
  toJSON KinesisAnalyticsApplicationRecordColumn{..} =
    object $
    catMaybes
    [ fmap (("Mapping",) . toJSON) _kinesisAnalyticsApplicationRecordColumnMapping
    , (Just . ("Name",) . toJSON) _kinesisAnalyticsApplicationRecordColumnName
    , (Just . ("SqlType",) . toJSON) _kinesisAnalyticsApplicationRecordColumnSqlType
    ]

instance FromJSON KinesisAnalyticsApplicationRecordColumn where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationRecordColumn <$>
      (obj .:? "Mapping") <*>
      (obj .: "Name") <*>
      (obj .: "SqlType")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationRecordColumn' containing
-- required fields as arguments.
kinesisAnalyticsApplicationRecordColumn
  :: Val Text -- ^ 'kaarcName'
  -> Val Text -- ^ 'kaarcSqlType'
  -> KinesisAnalyticsApplicationRecordColumn
kinesisAnalyticsApplicationRecordColumn namearg sqlTypearg =
  KinesisAnalyticsApplicationRecordColumn
  { _kinesisAnalyticsApplicationRecordColumnMapping = Nothing
  , _kinesisAnalyticsApplicationRecordColumnName = namearg
  , _kinesisAnalyticsApplicationRecordColumnSqlType = sqlTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html#cfn-kinesisanalytics-application-recordcolumn-mapping
kaarcMapping :: Lens' KinesisAnalyticsApplicationRecordColumn (Maybe (Val Text))
kaarcMapping = lens _kinesisAnalyticsApplicationRecordColumnMapping (\s a -> s { _kinesisAnalyticsApplicationRecordColumnMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html#cfn-kinesisanalytics-application-recordcolumn-name
kaarcName :: Lens' KinesisAnalyticsApplicationRecordColumn (Val Text)
kaarcName = lens _kinesisAnalyticsApplicationRecordColumnName (\s a -> s { _kinesisAnalyticsApplicationRecordColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html#cfn-kinesisanalytics-application-recordcolumn-sqltype
kaarcSqlType :: Lens' KinesisAnalyticsApplicationRecordColumn (Val Text)
kaarcSqlType = lens _kinesisAnalyticsApplicationRecordColumnSqlType (\s a -> s { _kinesisAnalyticsApplicationRecordColumnSqlType = a })
