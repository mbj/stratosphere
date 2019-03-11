{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationMappingParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCSVMappingParameters
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationJSONMappingParameters

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationMappingParameters. See
-- 'kinesisAnalyticsV2ApplicationMappingParameters' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationMappingParameters =
  KinesisAnalyticsV2ApplicationMappingParameters
  { _kinesisAnalyticsV2ApplicationMappingParametersCSVMappingParameters :: Maybe KinesisAnalyticsV2ApplicationCSVMappingParameters
  , _kinesisAnalyticsV2ApplicationMappingParametersJSONMappingParameters :: Maybe KinesisAnalyticsV2ApplicationJSONMappingParameters
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationMappingParameters where
  toJSON KinesisAnalyticsV2ApplicationMappingParameters{..} =
    object $
    catMaybes
    [ fmap (("CSVMappingParameters",) . toJSON) _kinesisAnalyticsV2ApplicationMappingParametersCSVMappingParameters
    , fmap (("JSONMappingParameters",) . toJSON) _kinesisAnalyticsV2ApplicationMappingParametersJSONMappingParameters
    ]

instance FromJSON KinesisAnalyticsV2ApplicationMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationMappingParameters <$>
      (obj .:? "CSVMappingParameters") <*>
      (obj .:? "JSONMappingParameters")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationMappingParameters
  :: KinesisAnalyticsV2ApplicationMappingParameters
kinesisAnalyticsV2ApplicationMappingParameters  =
  KinesisAnalyticsV2ApplicationMappingParameters
  { _kinesisAnalyticsV2ApplicationMappingParametersCSVMappingParameters = Nothing
  , _kinesisAnalyticsV2ApplicationMappingParametersJSONMappingParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mappingparameters.html#cfn-kinesisanalyticsv2-application-mappingparameters-csvmappingparameters
kavampCSVMappingParameters :: Lens' KinesisAnalyticsV2ApplicationMappingParameters (Maybe KinesisAnalyticsV2ApplicationCSVMappingParameters)
kavampCSVMappingParameters = lens _kinesisAnalyticsV2ApplicationMappingParametersCSVMappingParameters (\s a -> s { _kinesisAnalyticsV2ApplicationMappingParametersCSVMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mappingparameters.html#cfn-kinesisanalyticsv2-application-mappingparameters-jsonmappingparameters
kavampJSONMappingParameters :: Lens' KinesisAnalyticsV2ApplicationMappingParameters (Maybe KinesisAnalyticsV2ApplicationJSONMappingParameters)
kavampJSONMappingParameters = lens _kinesisAnalyticsV2ApplicationMappingParametersJSONMappingParameters (\s a -> s { _kinesisAnalyticsV2ApplicationMappingParametersJSONMappingParameters = a })
