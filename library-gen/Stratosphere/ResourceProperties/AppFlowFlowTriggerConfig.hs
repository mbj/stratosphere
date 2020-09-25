{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-triggerconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowTriggerConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowScheduledTriggerProperties

-- | Full data type definition for AppFlowFlowTriggerConfig. See
-- 'appFlowFlowTriggerConfig' for a more convenient constructor.
data AppFlowFlowTriggerConfig =
  AppFlowFlowTriggerConfig
  { _appFlowFlowTriggerConfigTriggerProperties :: Maybe AppFlowFlowScheduledTriggerProperties
  , _appFlowFlowTriggerConfigTriggerType :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowTriggerConfig where
  toJSON AppFlowFlowTriggerConfig{..} =
    object $
    catMaybes
    [ fmap (("TriggerProperties",) . toJSON) _appFlowFlowTriggerConfigTriggerProperties
    , (Just . ("TriggerType",) . toJSON) _appFlowFlowTriggerConfigTriggerType
    ]

-- | Constructor for 'AppFlowFlowTriggerConfig' containing required fields as
-- arguments.
appFlowFlowTriggerConfig
  :: Val Text -- ^ 'afftcTriggerType'
  -> AppFlowFlowTriggerConfig
appFlowFlowTriggerConfig triggerTypearg =
  AppFlowFlowTriggerConfig
  { _appFlowFlowTriggerConfigTriggerProperties = Nothing
  , _appFlowFlowTriggerConfigTriggerType = triggerTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-triggerconfig.html#cfn-appflow-flow-triggerconfig-triggerproperties
afftcTriggerProperties :: Lens' AppFlowFlowTriggerConfig (Maybe AppFlowFlowScheduledTriggerProperties)
afftcTriggerProperties = lens _appFlowFlowTriggerConfigTriggerProperties (\s a -> s { _appFlowFlowTriggerConfigTriggerProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-triggerconfig.html#cfn-appflow-flow-triggerconfig-triggertype
afftcTriggerType :: Lens' AppFlowFlowTriggerConfig (Val Text)
afftcTriggerType = lens _appFlowFlowTriggerConfigTriggerType (\s a -> s { _appFlowFlowTriggerConfigTriggerType = a })
