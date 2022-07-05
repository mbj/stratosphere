{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html

module Stratosphere.Resources.LogsLogStream where

import Stratosphere.ResourceImports


-- | Full data type definition for LogsLogStream. See 'logsLogStream' for a
-- more convenient constructor.
data LogsLogStream =
  LogsLogStream
  { _logsLogStreamLogGroupName :: Val Text
  , _logsLogStreamLogStreamName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties LogsLogStream where
  toResourceProperties LogsLogStream{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Logs::LogStream"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("LogGroupName",) . toJSON) _logsLogStreamLogGroupName
        , fmap (("LogStreamName",) . toJSON) _logsLogStreamLogStreamName
        ]
    }

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
