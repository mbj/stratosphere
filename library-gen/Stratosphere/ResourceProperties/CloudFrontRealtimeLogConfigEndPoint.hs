
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-endpoint.html

module Stratosphere.ResourceProperties.CloudFrontRealtimeLogConfigEndPoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontRealtimeLogConfigKinesisStreamConfig

-- | Full data type definition for CloudFrontRealtimeLogConfigEndPoint. See
-- 'cloudFrontRealtimeLogConfigEndPoint' for a more convenient constructor.
data CloudFrontRealtimeLogConfigEndPoint =
  CloudFrontRealtimeLogConfigEndPoint
  { _cloudFrontRealtimeLogConfigEndPointKinesisStreamConfig :: CloudFrontRealtimeLogConfigKinesisStreamConfig
  , _cloudFrontRealtimeLogConfigEndPointStreamType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontRealtimeLogConfigEndPoint where
  toJSON CloudFrontRealtimeLogConfigEndPoint{..} =
    object $
    catMaybes
    [ (Just . ("KinesisStreamConfig",) . toJSON) _cloudFrontRealtimeLogConfigEndPointKinesisStreamConfig
    , (Just . ("StreamType",) . toJSON) _cloudFrontRealtimeLogConfigEndPointStreamType
    ]

-- | Constructor for 'CloudFrontRealtimeLogConfigEndPoint' containing required
-- fields as arguments.
cloudFrontRealtimeLogConfigEndPoint
  :: CloudFrontRealtimeLogConfigKinesisStreamConfig -- ^ 'cfrlcepKinesisStreamConfig'
  -> Val Text -- ^ 'cfrlcepStreamType'
  -> CloudFrontRealtimeLogConfigEndPoint
cloudFrontRealtimeLogConfigEndPoint kinesisStreamConfigarg streamTypearg =
  CloudFrontRealtimeLogConfigEndPoint
  { _cloudFrontRealtimeLogConfigEndPointKinesisStreamConfig = kinesisStreamConfigarg
  , _cloudFrontRealtimeLogConfigEndPointStreamType = streamTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-endpoint.html#cfn-cloudfront-realtimelogconfig-endpoint-kinesisstreamconfig
cfrlcepKinesisStreamConfig :: Lens' CloudFrontRealtimeLogConfigEndPoint CloudFrontRealtimeLogConfigKinesisStreamConfig
cfrlcepKinesisStreamConfig = lens _cloudFrontRealtimeLogConfigEndPointKinesisStreamConfig (\s a -> s { _cloudFrontRealtimeLogConfigEndPointKinesisStreamConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-realtimelogconfig-endpoint.html#cfn-cloudfront-realtimelogconfig-endpoint-streamtype
cfrlcepStreamType :: Lens' CloudFrontRealtimeLogConfigEndPoint (Val Text)
cfrlcepStreamType = lens _cloudFrontRealtimeLogConfigEndPointStreamType (\s a -> s { _cloudFrontRealtimeLogConfigEndPointStreamType = a })
