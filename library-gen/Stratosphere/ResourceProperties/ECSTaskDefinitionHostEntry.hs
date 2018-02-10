{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHostEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionHostEntry. See
-- 'ecsTaskDefinitionHostEntry' for a more convenient constructor.
data ECSTaskDefinitionHostEntry =
  ECSTaskDefinitionHostEntry
  { _eCSTaskDefinitionHostEntryHostname :: Val Text
  , _eCSTaskDefinitionHostEntryIpAddress :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionHostEntry where
  toJSON ECSTaskDefinitionHostEntry{..} =
    object $
    catMaybes
    [ (Just . ("Hostname",) . toJSON) _eCSTaskDefinitionHostEntryHostname
    , (Just . ("IpAddress",) . toJSON) _eCSTaskDefinitionHostEntryIpAddress
    ]

instance FromJSON ECSTaskDefinitionHostEntry where
  parseJSON (Object obj) =
    ECSTaskDefinitionHostEntry <$>
      (obj .: "Hostname") <*>
      (obj .: "IpAddress")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionHostEntry' containing required fields
-- as arguments.
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
