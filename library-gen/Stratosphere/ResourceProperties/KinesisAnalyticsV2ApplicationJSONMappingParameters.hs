{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationJSONMappingParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationJSONMappingParameters. See
-- 'kinesisAnalyticsV2ApplicationJSONMappingParameters' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationJSONMappingParameters =
  KinesisAnalyticsV2ApplicationJSONMappingParameters
  { _kinesisAnalyticsV2ApplicationJSONMappingParametersRecordRowPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationJSONMappingParameters where
  toJSON KinesisAnalyticsV2ApplicationJSONMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordRowPath",) . toJSON) _kinesisAnalyticsV2ApplicationJSONMappingParametersRecordRowPath
    ]

instance FromJSON KinesisAnalyticsV2ApplicationJSONMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationJSONMappingParameters <$>
      (obj .: "RecordRowPath")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationJSONMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationJSONMappingParameters
  :: Val Text -- ^ 'kavajsonmpRecordRowPath'
  -> KinesisAnalyticsV2ApplicationJSONMappingParameters
kinesisAnalyticsV2ApplicationJSONMappingParameters recordRowPatharg =
  KinesisAnalyticsV2ApplicationJSONMappingParameters
  { _kinesisAnalyticsV2ApplicationJSONMappingParametersRecordRowPath = recordRowPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html#cfn-kinesisanalyticsv2-application-jsonmappingparameters-recordrowpath
kavajsonmpRecordRowPath :: Lens' KinesisAnalyticsV2ApplicationJSONMappingParameters (Val Text)
kavajsonmpRecordRowPath = lens _kinesisAnalyticsV2ApplicationJSONMappingParametersRecordRowPath (\s a -> s { _kinesisAnalyticsV2ApplicationJSONMappingParametersRecordRowPath = a })
