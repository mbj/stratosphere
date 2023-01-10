
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceRecordColumn where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceRecordColumn. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceRecordColumn' for a more
-- convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceRecordColumn =
  KinesisAnalyticsApplicationReferenceDataSourceRecordColumn
  { _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnMapping :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnName :: Val Text
  , _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnSqlType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceRecordColumn where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceRecordColumn{..} =
    object $
    catMaybes
    [ fmap (("Mapping",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnMapping
    , (Just . ("Name",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnName
    , (Just . ("SqlType",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnSqlType
    ]

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceRecordColumn' containing
-- required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceRecordColumn
  :: Val Text -- ^ 'kaardsrcName'
  -> Val Text -- ^ 'kaardsrcSqlType'
  -> KinesisAnalyticsApplicationReferenceDataSourceRecordColumn
kinesisAnalyticsApplicationReferenceDataSourceRecordColumn namearg sqlTypearg =
  KinesisAnalyticsApplicationReferenceDataSourceRecordColumn
  { _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnMapping = Nothing
  , _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnName = namearg
  , _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnSqlType = sqlTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-mapping
kaardsrcMapping :: Lens' KinesisAnalyticsApplicationReferenceDataSourceRecordColumn (Maybe (Val Text))
kaardsrcMapping = lens _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnMapping (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-name
kaardsrcName :: Lens' KinesisAnalyticsApplicationReferenceDataSourceRecordColumn (Val Text)
kaardsrcName = lens _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnName (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-sqltype
kaardsrcSqlType :: Lens' KinesisAnalyticsApplicationReferenceDataSourceRecordColumn (Val Text)
kaardsrcSqlType = lens _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnSqlType (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceRecordColumnSqlType = a })
