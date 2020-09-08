{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-kinesisstreamconfig.html

module Stratosphere.ResourceProperties.CloudFrontRealtimeLogConfigKinesisStreamConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CloudFrontRealtimeLogConfigKinesisStreamConfig. See
-- 'cloudFrontRealtimeLogConfigKinesisStreamConfig' for a more convenient
-- constructor.
data CloudFrontRealtimeLogConfigKinesisStreamConfig =
  CloudFrontRealtimeLogConfigKinesisStreamConfig
  { _cloudFrontRealtimeLogConfigKinesisStreamConfigRoleArn :: Val Text
  , _cloudFrontRealtimeLogConfigKinesisStreamConfigStreamArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontRealtimeLogConfigKinesisStreamConfig where
  toJSON CloudFrontRealtimeLogConfigKinesisStreamConfig{..} =
    object $
    catMaybes
    [ (Just . ("RoleArn",) . toJSON) _cloudFrontRealtimeLogConfigKinesisStreamConfigRoleArn
    , (Just . ("StreamArn",) . toJSON) _cloudFrontRealtimeLogConfigKinesisStreamConfigStreamArn
    ]

-- | Constructor for 'CloudFrontRealtimeLogConfigKinesisStreamConfig'
-- containing required fields as arguments.
cloudFrontRealtimeLogConfigKinesisStreamConfig
  :: Val Text -- ^ 'cfrlckscRoleArn'
  -> Val Text -- ^ 'cfrlckscStreamArn'
  -> CloudFrontRealtimeLogConfigKinesisStreamConfig
cloudFrontRealtimeLogConfigKinesisStreamConfig roleArnarg streamArnarg =
  CloudFrontRealtimeLogConfigKinesisStreamConfig
  { _cloudFrontRealtimeLogConfigKinesisStreamConfigRoleArn = roleArnarg
  , _cloudFrontRealtimeLogConfigKinesisStreamConfigStreamArn = streamArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-kinesisstreamconfig.html#cfn-cloudfront-realtimelogconfig-kinesisstreamconfig-rolearn
cfrlckscRoleArn :: Lens' CloudFrontRealtimeLogConfigKinesisStreamConfig (Val Text)
cfrlckscRoleArn = lens _cloudFrontRealtimeLogConfigKinesisStreamConfigRoleArn (\s a -> s { _cloudFrontRealtimeLogConfigKinesisStreamConfigRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-kinesisstreamconfig.html#cfn-cloudfront-realtimelogconfig-kinesisstreamconfig-streamarn
cfrlckscStreamArn :: Lens' CloudFrontRealtimeLogConfigKinesisStreamConfig (Val Text)
cfrlckscStreamArn = lens _cloudFrontRealtimeLogConfigKinesisStreamConfigStreamArn (\s a -> s { _cloudFrontRealtimeLogConfigKinesisStreamConfigStreamArn = a })
