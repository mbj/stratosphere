{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Logs::LogStream resource creates an Amazon CloudWatch Logs log
-- stream in a log group. A log stream represents the sequence of events
-- coming from an application instance or resource that you are monitoring.
-- For more information, see Monitoring Log Files in the Amazon CloudWatch
-- Developer Guide.

module Stratosphere.Resources.LogStream where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LogStream. See 'logStream' for a more
-- convenient constructor.
data LogStream =
  LogStream
  { _logStreamLogGroupName :: Val Text
  , _logStreamLogStreamName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON LogStream where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON LogStream where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'LogStream' containing required fields as arguments.
logStream
  :: Val Text -- ^ 'lsLogGroupName'
  -> LogStream
logStream logGroupNamearg =
  LogStream
  { _logStreamLogGroupName = logGroupNamearg
  , _logStreamLogStreamName = Nothing
  }

-- | The name of the log group where the log stream is created.
lsLogGroupName :: Lens' LogStream (Val Text)
lsLogGroupName = lens _logStreamLogGroupName (\s a -> s { _logStreamLogGroupName = a })

-- | The name of the log stream to create. The name must be unique within the
-- log group.
lsLogStreamName :: Lens' LogStream (Maybe (Val Text))
lsLogStreamName = lens _logStreamLogStreamName (\s a -> s { _logStreamLogStreamName = a })