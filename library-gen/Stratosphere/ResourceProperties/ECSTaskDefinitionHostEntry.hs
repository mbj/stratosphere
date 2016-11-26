{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHostEntry where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionHostEntry. See
-- | 'ecsTaskDefinitionHostEntry' for a more convenient constructor.
data ECSTaskDefinitionHostEntry =
  ECSTaskDefinitionHostEntry
  { _eCSTaskDefinitionHostEntryHostname :: Val Text
  , _eCSTaskDefinitionHostEntryIpAddress :: Val Text
  } deriving (Show, Generic)

instance ToJSON ECSTaskDefinitionHostEntry where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON ECSTaskDefinitionHostEntry where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'ECSTaskDefinitionHostEntry' containing required fields
-- | as arguments.
ecsTaskDefinitionHostEntry
  :: Val Text -- ^ 'ecstdheHostname'
  -> Val Text -- ^ 'ecstdheIpAddress'
  -> ECSTaskDefinitionHostEntry
ecsTaskDefinitionHostEntry hostnamearg ipAddressarg =
  ECSTaskDefinitionHostEntry
  { _eCSTaskDefinitionHostEntryHostname = hostnamearg
  , _eCSTaskDefinitionHostEntryIpAddress = ipAddressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html#cfn-ecs-taskdefinition-containerdefinition-hostentry-hostname
ecstdheHostname :: Lens' ECSTaskDefinitionHostEntry (Val Text)
ecstdheHostname = lens _eCSTaskDefinitionHostEntryHostname (\s a -> s { _eCSTaskDefinitionHostEntryHostname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html#cfn-ecs-taskdefinition-containerdefinition-hostentry-ipaddress
ecstdheIpAddress :: Lens' ECSTaskDefinitionHostEntry (Val Text)
ecstdheIpAddress = lens _eCSTaskDefinitionHostEntryIpAddress (\s a -> s { _eCSTaskDefinitionHostEntryIpAddress = a })
