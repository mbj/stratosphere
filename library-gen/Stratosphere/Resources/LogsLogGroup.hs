{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html

module Stratosphere.Resources.LogsLogGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for LogsLogGroup. See 'logsLogGroup' for a more
-- convenient constructor.
data LogsLogGroup =
  LogsLogGroup
  { _logsLogGroupLogGroupName :: Maybe (Val Text)
  , _logsLogGroupRetentionInDays :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties LogsLogGroup where
  toResourceProperties LogsLogGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Logs::LogGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("LogGroupName",) . toJSON) _logsLogGroupLogGroupName
        , fmap (("RetentionInDays",) . toJSON) _logsLogGroupRetentionInDays
        ]
    }

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
llgRetentionInDays :: Lens' LogsLogGroup (Maybe (Val Integer))
llgRetentionInDays = lens _logsLogGroupRetentionInDays (\s a -> s { _logsLogGroupRetentionInDays = a })
