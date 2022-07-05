{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html

module Stratosphere.Resources.LogsDestination where

import Stratosphere.ResourceImports


-- | Full data type definition for LogsDestination. See 'logsDestination' for
-- a more convenient constructor.
data LogsDestination =
  LogsDestination
  { _logsDestinationDestinationName :: Val Text
  , _logsDestinationDestinationPolicy :: Val Text
  , _logsDestinationRoleArn :: Val Text
  , _logsDestinationTargetArn :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties LogsDestination where
  toResourceProperties LogsDestination{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Logs::Destination"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DestinationName",) . toJSON) _logsDestinationDestinationName
        , (Just . ("DestinationPolicy",) . toJSON) _logsDestinationDestinationPolicy
        , (Just . ("RoleArn",) . toJSON) _logsDestinationRoleArn
        , (Just . ("TargetArn",) . toJSON) _logsDestinationTargetArn
        ]
    }

-- | Constructor for 'LogsDestination' containing required fields as
-- arguments.
logsDestination
  :: Val Text -- ^ 'ldDestinationName'
  -> Val Text -- ^ 'ldDestinationPolicy'
  -> Val Text -- ^ 'ldRoleArn'
  -> Val Text -- ^ 'ldTargetArn'
  -> LogsDestination
logsDestination destinationNamearg destinationPolicyarg roleArnarg targetArnarg =
  LogsDestination
  { _logsDestinationDestinationName = destinationNamearg
  , _logsDestinationDestinationPolicy = destinationPolicyarg
  , _logsDestinationRoleArn = roleArnarg
  , _logsDestinationTargetArn = targetArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationname
ldDestinationName :: Lens' LogsDestination (Val Text)
ldDestinationName = lens _logsDestinationDestinationName (\s a -> s { _logsDestinationDestinationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationpolicy
ldDestinationPolicy :: Lens' LogsDestination (Val Text)
ldDestinationPolicy = lens _logsDestinationDestinationPolicy (\s a -> s { _logsDestinationDestinationPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-rolearn
ldRoleArn :: Lens' LogsDestination (Val Text)
ldRoleArn = lens _logsDestinationRoleArn (\s a -> s { _logsDestinationRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-targetarn
ldTargetArn :: Lens' LogsDestination (Val Text)
ldTargetArn = lens _logsDestinationTargetArn (\s a -> s { _logsDestinationTargetArn = a })
