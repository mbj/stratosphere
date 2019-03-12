{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-jsonmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationJSONMappingParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationJSONMappingParameters. See
-- 'kinesisAnalyticsApplicationJSONMappingParameters' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationJSONMappingParameters =
  KinesisAnalyticsApplicationJSONMappingParameters
  { _kinesisAnalyticsApplicationJSONMappingParametersRecordRowPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationJSONMappingParameters where
  toJSON KinesisAnalyticsApplicationJSONMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordRowPath",) . toJSON) _kinesisAnalyticsApplicationJSONMappingParametersRecordRowPath
    ]

-- | Constructor for 'KinesisAnalyticsApplicationJSONMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsApplicationJSONMappingParameters
  :: Val Text -- ^ 'kaajsonmpRecordRowPath'
  -> KinesisAnalyticsApplicationJSONMappingParameters
kinesisAnalyticsApplicationJSONMappingParameters recordRowPatharg =
  KinesisAnalyticsApplicationJSONMappingParameters
  { _kinesisAnalyticsApplicationJSONMappingParametersRecordRowPath = recordRowPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-jsonmappingparameters.html#cfn-kinesisanalytics-application-jsonmappingparameters-recordrowpath
kaajsonmpRecordRowPath :: Lens' KinesisAnalyticsApplicationJSONMappingParameters (Val Text)
kaajsonmpRecordRowPath = lens _kinesisAnalyticsApplicationJSONMappingParametersRecordRowPath (\s a -> s { _kinesisAnalyticsApplicationJSONMappingParametersRecordRowPath = a })
