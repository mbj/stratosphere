{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html

module Stratosphere.Resources.LogsLogGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LogsLogGroup. See 'logsLogGroup' for a more
-- | convenient constructor.
data LogsLogGroup =
  LogsLogGroup
  { _logsLogGroupLogGroupName :: Maybe (Val Text)
  , _logsLogGroupRetentionInDays :: Maybe (Val Integer')
  } deriving (Show, Eq, Generic)

instance ToJSON LogsLogGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

instance FromJSON LogsLogGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

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
