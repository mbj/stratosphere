{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHostEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionHostEntry. See
-- 'ecsTaskDefinitionHostEntry' for a more convenient constructor.
data ECSTaskDefinitionHostEntry =
  ECSTaskDefinitionHostEntry
  { _eCSTaskDefinitionHostEntryHostname :: Maybe (Val Text)
  , _eCSTaskDefinitionHostEntryIpAddress :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionHostEntry where
  toJSON ECSTaskDefinitionHostEntry{..} =
    object $
    catMaybes
    [ fmap (("Hostname",) . toJSON) _eCSTaskDefinitionHostEntryHostname
    , fmap (("IpAddress",) . toJSON) _eCSTaskDefinitionHostEntryIpAddress
    ]

-- | Constructor for 'ECSTaskDefinitionHostEntry' containing required fields
-- as arguments.
ecsTaskDefinitionHostEntry
  :: ECSTaskDefinitionHostEntry
ecsTaskDefinitionHostEntry  =
  ECSTaskDefinitionHostEntry
  { _eCSTaskDefinitionHostEntryHostname = Nothing
  , _eCSTaskDefinitionHostEntryIpAddress = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html#cfn-ecs-taskdefinition-containerdefinition-hostentry-hostname
ecstdheHostname :: Lens' ECSTaskDefinitionHostEntry (Maybe (Val Text))
ecstdheHostname = lens _eCSTaskDefinitionHostEntryHostname (\s a -> s { _eCSTaskDefinitionHostEntryHostname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html#cfn-ecs-taskdefinition-containerdefinition-hostentry-ipaddress
ecstdheIpAddress :: Lens' ECSTaskDefinitionHostEntry (Maybe (Val Text))
ecstdheIpAddress = lens _eCSTaskDefinitionHostEntryIpAddress (\s a -> s { _eCSTaskDefinitionHostEntryIpAddress = a })
