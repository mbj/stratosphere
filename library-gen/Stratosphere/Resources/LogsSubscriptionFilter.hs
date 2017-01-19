{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html

module Stratosphere.Resources.LogsSubscriptionFilter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LogsSubscriptionFilter. See
-- | 'logsSubscriptionFilter' for a more convenient constructor.
data LogsSubscriptionFilter =
  LogsSubscriptionFilter
  { _logsSubscriptionFilterDestinationArn :: Val Text
  , _logsSubscriptionFilterFilterPattern :: Val Text
  , _logsSubscriptionFilterLogGroupName :: Val Text
  , _logsSubscriptionFilterRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON LogsSubscriptionFilter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON LogsSubscriptionFilter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'LogsSubscriptionFilter' containing required fields as
-- | arguments.
logsSubscriptionFilter
  :: Val Text -- ^ 'lsfDestinationArn'
  -> Val Text -- ^ 'lsfFilterPattern'
  -> Val Text -- ^ 'lsfLogGroupName'
  -> LogsSubscriptionFilter
logsSubscriptionFilter destinationArnarg filterPatternarg logGroupNamearg =
  LogsSubscriptionFilter
  { _logsSubscriptionFilterDestinationArn = destinationArnarg
  , _logsSubscriptionFilterFilterPattern = filterPatternarg
  , _logsSubscriptionFilterLogGroupName = logGroupNamearg
  , _logsSubscriptionFilterRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-destinationarn
lsfDestinationArn :: Lens' LogsSubscriptionFilter (Val Text)
lsfDestinationArn = lens _logsSubscriptionFilterDestinationArn (\s a -> s { _logsSubscriptionFilterDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-filterpattern
lsfFilterPattern :: Lens' LogsSubscriptionFilter (Val Text)
lsfFilterPattern = lens _logsSubscriptionFilterFilterPattern (\s a -> s { _logsSubscriptionFilterFilterPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-loggroupname
lsfLogGroupName :: Lens' LogsSubscriptionFilter (Val Text)
lsfLogGroupName = lens _logsSubscriptionFilterLogGroupName (\s a -> s { _logsSubscriptionFilterLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-rolearn
lsfRoleArn :: Lens' LogsSubscriptionFilter (Maybe (Val Text))
lsfRoleArn = lens _logsSubscriptionFilterRoleArn (\s a -> s { _logsSubscriptionFilterRoleArn = a })