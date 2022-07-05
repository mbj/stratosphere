{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html

module Stratosphere.Resources.CloudFrontRealtimeLogConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontRealtimeLogConfigEndPoint

-- | Full data type definition for CloudFrontRealtimeLogConfig. See
-- 'cloudFrontRealtimeLogConfig' for a more convenient constructor.
data CloudFrontRealtimeLogConfig =
  CloudFrontRealtimeLogConfig
  { _cloudFrontRealtimeLogConfigEndPoints :: [CloudFrontRealtimeLogConfigEndPoint]
  , _cloudFrontRealtimeLogConfigFields :: ValList Text
  , _cloudFrontRealtimeLogConfigName :: Val Text
  , _cloudFrontRealtimeLogConfigSamplingRate :: Val Double
  } deriving (Show, Eq)

instance ToResourceProperties CloudFrontRealtimeLogConfig where
  toResourceProperties CloudFrontRealtimeLogConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFront::RealtimeLogConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("EndPoints",) . toJSON) _cloudFrontRealtimeLogConfigEndPoints
        , (Just . ("Fields",) . toJSON) _cloudFrontRealtimeLogConfigFields
        , (Just . ("Name",) . toJSON) _cloudFrontRealtimeLogConfigName
        , (Just . ("SamplingRate",) . toJSON) _cloudFrontRealtimeLogConfigSamplingRate
        ]
    }

-- | Constructor for 'CloudFrontRealtimeLogConfig' containing required fields
-- as arguments.
cloudFrontRealtimeLogConfig
  :: [CloudFrontRealtimeLogConfigEndPoint] -- ^ 'cfrlcEndPoints'
  -> ValList Text -- ^ 'cfrlcFields'
  -> Val Text -- ^ 'cfrlcName'
  -> Val Double -- ^ 'cfrlcSamplingRate'
  -> CloudFrontRealtimeLogConfig
cloudFrontRealtimeLogConfig endPointsarg fieldsarg namearg samplingRatearg =
  CloudFrontRealtimeLogConfig
  { _cloudFrontRealtimeLogConfigEndPoints = endPointsarg
  , _cloudFrontRealtimeLogConfigFields = fieldsarg
  , _cloudFrontRealtimeLogConfigName = namearg
  , _cloudFrontRealtimeLogConfigSamplingRate = samplingRatearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-endpoints
cfrlcEndPoints :: Lens' CloudFrontRealtimeLogConfig [CloudFrontRealtimeLogConfigEndPoint]
cfrlcEndPoints = lens _cloudFrontRealtimeLogConfigEndPoints (\s a -> s { _cloudFrontRealtimeLogConfigEndPoints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-fields
cfrlcFields :: Lens' CloudFrontRealtimeLogConfig (ValList Text)
cfrlcFields = lens _cloudFrontRealtimeLogConfigFields (\s a -> s { _cloudFrontRealtimeLogConfigFields = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-name
cfrlcName :: Lens' CloudFrontRealtimeLogConfig (Val Text)
cfrlcName = lens _cloudFrontRealtimeLogConfigName (\s a -> s { _cloudFrontRealtimeLogConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-samplingrate
cfrlcSamplingRate :: Lens' CloudFrontRealtimeLogConfig (Val Double)
cfrlcSamplingRate = lens _cloudFrontRealtimeLogConfigSamplingRate (\s a -> s { _cloudFrontRealtimeLogConfigSamplingRate = a })
