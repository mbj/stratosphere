{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Logs::LogGroup resource creates an Amazon CloudWatch Logs log
-- group that defines common properties for log streams, such as their
-- retention and access control rules. Each log stream must belong to one log
-- group.

module Stratosphere.Resources.LogGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LogGroup. See 'logGroup' for a more
-- convenient constructor.
data LogGroup =
  LogGroup
  { _logGroupLogGroupName :: Maybe (Val Text)
  , _logGroupRetentionInDays :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON LogGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON LogGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

-- | Constructor for 'LogGroup' containing required fields as arguments.
logGroup
  :: LogGroup
logGroup  =
  LogGroup
  { _logGroupLogGroupName = Nothing
  , _logGroupRetentionInDays = Nothing
  }

-- | A name for the log group. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the table name. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
lgLogGroupName :: Lens' LogGroup (Maybe (Val Text))
lgLogGroupName = lens _logGroupLogGroupName (\s a -> s { _logGroupLogGroupName = a })

-- | The number of days log events are kept in CloudWatch Logs. When a log
-- event expires, CloudWatch Logs automatically deletes it. For valid values,
-- see PutRetentionPolicy in the Amazon CloudWatch Logs API Reference.
lgRetentionInDays :: Lens' LogGroup (Maybe (Val Integer'))
lgRetentionInDays = lens _logGroupRetentionInDays (\s a -> s { _logGroupRetentionInDays = a })