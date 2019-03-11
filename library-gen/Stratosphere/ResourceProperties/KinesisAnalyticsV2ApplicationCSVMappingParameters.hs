{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCSVMappingParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationCSVMappingParameters. See
-- 'kinesisAnalyticsV2ApplicationCSVMappingParameters' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationCSVMappingParameters =
  KinesisAnalyticsV2ApplicationCSVMappingParameters
  { _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordColumnDelimiter :: Val Text
  , _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordRowDelimiter :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationCSVMappingParameters where
  toJSON KinesisAnalyticsV2ApplicationCSVMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumnDelimiter",) . toJSON) _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordColumnDelimiter
    , (Just . ("RecordRowDelimiter",) . toJSON) _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordRowDelimiter
    ]

instance FromJSON KinesisAnalyticsV2ApplicationCSVMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationCSVMappingParameters <$>
      (obj .: "RecordColumnDelimiter") <*>
      (obj .: "RecordRowDelimiter")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationCSVMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationCSVMappingParameters
  :: Val Text -- ^ 'kavacsvmpRecordColumnDelimiter'
  -> Val Text -- ^ 'kavacsvmpRecordRowDelimiter'
  -> KinesisAnalyticsV2ApplicationCSVMappingParameters
kinesisAnalyticsV2ApplicationCSVMappingParameters recordColumnDelimiterarg recordRowDelimiterarg =
  KinesisAnalyticsV2ApplicationCSVMappingParameters
  { _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordColumnDelimiter = recordColumnDelimiterarg
  , _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordRowDelimiter = recordRowDelimiterarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html#cfn-kinesisanalyticsv2-application-csvmappingparameters-recordcolumndelimiter
kavacsvmpRecordColumnDelimiter :: Lens' KinesisAnalyticsV2ApplicationCSVMappingParameters (Val Text)
kavacsvmpRecordColumnDelimiter = lens _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordColumnDelimiter (\s a -> s { _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordColumnDelimiter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html#cfn-kinesisanalyticsv2-application-csvmappingparameters-recordrowdelimiter
kavacsvmpRecordRowDelimiter :: Lens' KinesisAnalyticsV2ApplicationCSVMappingParameters (Val Text)
kavacsvmpRecordRowDelimiter = lens _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordRowDelimiter (\s a -> s { _kinesisAnalyticsV2ApplicationCSVMappingParametersRecordRowDelimiter = a })
