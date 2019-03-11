{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationRecordColumn where

import Stratosphere.ResourceImports


-- | Full data type definition for KinesisAnalyticsV2ApplicationRecordColumn.
-- See 'kinesisAnalyticsV2ApplicationRecordColumn' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationRecordColumn =
  KinesisAnalyticsV2ApplicationRecordColumn
  { _kinesisAnalyticsV2ApplicationRecordColumnMapping :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationRecordColumnName :: Val Text
  , _kinesisAnalyticsV2ApplicationRecordColumnSqlType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationRecordColumn where
  toJSON KinesisAnalyticsV2ApplicationRecordColumn{..} =
    object $
    catMaybes
    [ fmap (("Mapping",) . toJSON) _kinesisAnalyticsV2ApplicationRecordColumnMapping
    , (Just . ("Name",) . toJSON) _kinesisAnalyticsV2ApplicationRecordColumnName
    , (Just . ("SqlType",) . toJSON) _kinesisAnalyticsV2ApplicationRecordColumnSqlType
    ]

instance FromJSON KinesisAnalyticsV2ApplicationRecordColumn where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationRecordColumn <$>
      (obj .:? "Mapping") <*>
      (obj .: "Name") <*>
      (obj .: "SqlType")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationRecordColumn' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationRecordColumn
  :: Val Text -- ^ 'kavarcName'
  -> Val Text -- ^ 'kavarcSqlType'
  -> KinesisAnalyticsV2ApplicationRecordColumn
kinesisAnalyticsV2ApplicationRecordColumn namearg sqlTypearg =
  KinesisAnalyticsV2ApplicationRecordColumn
  { _kinesisAnalyticsV2ApplicationRecordColumnMapping = Nothing
  , _kinesisAnalyticsV2ApplicationRecordColumnName = namearg
  , _kinesisAnalyticsV2ApplicationRecordColumnSqlType = sqlTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html#cfn-kinesisanalyticsv2-application-recordcolumn-mapping
kavarcMapping :: Lens' KinesisAnalyticsV2ApplicationRecordColumn (Maybe (Val Text))
kavarcMapping = lens _kinesisAnalyticsV2ApplicationRecordColumnMapping (\s a -> s { _kinesisAnalyticsV2ApplicationRecordColumnMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html#cfn-kinesisanalyticsv2-application-recordcolumn-name
kavarcName :: Lens' KinesisAnalyticsV2ApplicationRecordColumn (Val Text)
kavarcName = lens _kinesisAnalyticsV2ApplicationRecordColumnName (\s a -> s { _kinesisAnalyticsV2ApplicationRecordColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html#cfn-kinesisanalyticsv2-application-recordcolumn-sqltype
kavarcSqlType :: Lens' KinesisAnalyticsV2ApplicationRecordColumn (Val Text)
kavarcSqlType = lens _kinesisAnalyticsV2ApplicationRecordColumnSqlType (\s a -> s { _kinesisAnalyticsV2ApplicationRecordColumnSqlType = a })
