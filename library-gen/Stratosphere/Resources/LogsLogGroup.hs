{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html

module Stratosphere.Resources.LogsLogGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for LogsLogGroup. See 'logsLogGroup' for a more
-- | convenient constructor.
data LogsLogGroup =
  LogsLogGroup
  { _logsLogGroupLogGroupName :: Maybe (Val Text)
  , _logsLogGroupRetentionInDays :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON LogsLogGroup where
  toJSON LogsLogGroup{..} =
    object $
    catMaybes
    [ ("LogGroupName" .=) <$> _logsLogGroupLogGroupName
    , ("RetentionInDays" .=) <$> _logsLogGroupRetentionInDays
    ]

instance FromJSON LogsLogGroup where
  parseJSON (Object obj) =
    LogsLogGroup <$>
      obj .:? "LogGroupName" <*>
      obj .:? "RetentionInDays"
  parseJSON _ = mempty

-- | Constructor for 'LogsLogGroup' containing required fields as arguments.
logsLogGroup
  :: LogsLogGroup
logsLogGroup  =
  LogsLogGroup
  { _logsLogGroupLogGroupName = Nothing
  , _logsLogGroupRetentionInDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-loggroupname
llgLogGroupName :: Lens' LogsLogGroup (Maybe (Val Text))
llgLogGroupName = lens _logsLogGroupLogGroupName (\s a -> s { _logsLogGroupLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-retentionindays
llgRetentionInDays :: Lens' LogsLogGroup (Maybe (Val Integer'))
llgRetentionInDays = lens _logsLogGroupRetentionInDays (\s a -> s { _logsLogGroupRetentionInDays = a })
