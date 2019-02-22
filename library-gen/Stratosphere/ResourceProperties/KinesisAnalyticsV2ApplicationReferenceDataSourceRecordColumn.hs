{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn =
  KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnMapping :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnName :: Val Text
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnSqlType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn{..} =
    object $
    catMaybes
    [ fmap (("Mapping",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnMapping
    , (Just . ("Name",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnName
    , (Just . ("SqlType",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnSqlType
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn <$>
      (obj .:? "Mapping") <*>
      (obj .: "Name") <*>
      (obj .: "SqlType")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn
  :: Val Text -- ^ 'kavardsrcName'
  -> Val Text -- ^ 'kavardsrcSqlType'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn
kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn namearg sqlTypearg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnMapping = Nothing
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnName = namearg
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnSqlType = sqlTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-mapping
kavardsrcMapping :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn (Maybe (Val Text))
kavardsrcMapping = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnMapping (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-name
kavardsrcName :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn (Val Text)
kavardsrcName = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnName (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-sqltype
kavardsrcSqlType :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn (Val Text)
kavardsrcSqlType = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnSqlType (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumnSqlType = a })
