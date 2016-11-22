{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::SNS::Topic type creates an Amazon Simple Notification Service
-- (Amazon SNS) topic.

module Stratosphere.Resources.SNSTopic where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.SNSTopicSubscription

-- | Full data type definition for SNSTopic. See 'snsTopic' for a more
-- convenient constructor.
data SNSTopic =
  SNSTopic
  { _sNSTopicDisplayName :: Maybe (Val Text)
  , _sNSTopicSubscription :: Maybe [SNSTopicSubscription]
  , _sNSTopicTopicName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON SNSTopic where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON SNSTopic where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

-- | Constructor for 'SNSTopic' containing required fields as arguments.
snsTopic
  :: SNSTopic
snsTopic  =
  SNSTopic
  { _sNSTopicDisplayName = Nothing
  , _sNSTopicSubscription = Nothing
  , _sNSTopicTopicName = Nothing
  }

-- | A developer-defined string that can be used to identify this SNS topic.
snstDisplayName :: Lens' SNSTopic (Maybe (Val Text))
snstDisplayName = lens _sNSTopicDisplayName (\s a -> s { _sNSTopicDisplayName = a })

-- | The SNS subscriptions (endpoints) for this topic.
snstSubscription :: Lens' SNSTopic (Maybe [SNSTopicSubscription])
snstSubscription = lens _sNSTopicSubscription (\s a -> s { _sNSTopicSubscription = a })

-- | A name for the topic. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the topic name. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
snstTopicName :: Lens' SNSTopic (Maybe (Val Text))
snstTopicName = lens _sNSTopicTopicName (\s a -> s { _sNSTopicTopicName = a })