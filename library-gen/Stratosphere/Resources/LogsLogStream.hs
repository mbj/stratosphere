{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html

module Stratosphere.Resources.LogsLogStream where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LogsLogStream. See 'logsLogStream' for a
-- | more convenient constructor.
data LogsLogStream =
  LogsLogStream
  { _logsLogStreamLogGroupName :: Val Text
  , _logsLogStreamLogStreamName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON LogsLogStream where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON LogsLogStream where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'LogsLogStream' containing required fields as arguments.
logsLogStream
  :: Val Text -- ^ 'llsLogGroupName'
  -> LogsLogStream
logsLogStream logGroupNamearg =
  LogsLogStream
  { _logsLogStreamLogGroupName = logGroupNamearg
  , _logsLogStreamLogStreamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-loggroupname
llsLogGroupName :: Lens' LogsLogStream (Val Text)
llsLogGroupName = lens _logsLogStreamLogGroupName (\s a -> s { _logsLogStreamLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-logstreamname
llsLogStreamName :: Lens' LogsLogStream (Maybe (Val Text))
llsLogStreamName = lens _logsLogStreamLogStreamName (\s a -> s { _logsLogStreamLogStreamName = a })
