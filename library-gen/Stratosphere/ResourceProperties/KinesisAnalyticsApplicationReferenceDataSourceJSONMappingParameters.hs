
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-jsonmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters' for
-- a more convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters =
  KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters
  { _kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParametersRecordRowPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordRowPath",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParametersRecordRowPath
    ]

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters
  :: Val Text -- ^ 'kaardsjsonmpRecordRowPath'
  -> KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters
kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters recordRowPatharg =
  KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters
  { _kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParametersRecordRowPath = recordRowPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-jsonmappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-jsonmappingparameters-recordrowpath
kaardsjsonmpRecordRowPath :: Lens' KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters (Val Text)
kaardsjsonmpRecordRowPath = lens _kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParametersRecordRowPath (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceJSONMappingParametersRecordRowPath = a })
