{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html

module Stratosphere.ResourceProperties.Route53HostedZoneQueryLoggingConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53HostedZoneQueryLoggingConfig. See
-- 'route53HostedZoneQueryLoggingConfig' for a more convenient constructor.
data Route53HostedZoneQueryLoggingConfig =
  Route53HostedZoneQueryLoggingConfig
  { _route53HostedZoneQueryLoggingConfigCloudWatchLogsLogGroupArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53HostedZoneQueryLoggingConfig where
  toJSON Route53HostedZoneQueryLoggingConfig{..} =
    object $
    catMaybes
    [ (Just . ("CloudWatchLogsLogGroupArn",) . toJSON) _route53HostedZoneQueryLoggingConfigCloudWatchLogsLogGroupArn
    ]

instance FromJSON Route53HostedZoneQueryLoggingConfig where
  parseJSON (Object obj) =
    Route53HostedZoneQueryLoggingConfig <$>
      (obj .: "CloudWatchLogsLogGroupArn")
  parseJSON _ = mempty

-- | Constructor for 'Route53HostedZoneQueryLoggingConfig' containing required
-- fields as arguments.
route53HostedZoneQueryLoggingConfig
  :: Val Text -- ^ 'rhzqlcCloudWatchLogsLogGroupArn'
  -> Route53HostedZoneQueryLoggingConfig
route53HostedZoneQueryLoggingConfig cloudWatchLogsLogGroupArnarg =
  Route53HostedZoneQueryLoggingConfig
  { _route53HostedZoneQueryLoggingConfigCloudWatchLogsLogGroupArn = cloudWatchLogsLogGroupArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html#cfn-route53-hostedzone-queryloggingconfig-cloudwatchlogsloggrouparn
rhzqlcCloudWatchLogsLogGroupArn :: Lens' Route53HostedZoneQueryLoggingConfig (Val Text)
rhzqlcCloudWatchLogsLogGroupArn = lens _route53HostedZoneQueryLoggingConfigCloudWatchLogsLogGroupArn (\s a -> s { _route53HostedZoneQueryLoggingConfigCloudWatchLogsLogGroupArn = a })
