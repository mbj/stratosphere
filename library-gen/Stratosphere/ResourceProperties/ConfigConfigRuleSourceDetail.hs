{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html

module Stratosphere.ResourceProperties.ConfigConfigRuleSourceDetail where

import Stratosphere.ResourceImports


-- | Full data type definition for ConfigConfigRuleSourceDetail. See
-- 'configConfigRuleSourceDetail' for a more convenient constructor.
data ConfigConfigRuleSourceDetail =
  ConfigConfigRuleSourceDetail
  { _configConfigRuleSourceDetailEventSource :: Val Text
  , _configConfigRuleSourceDetailMaximumExecutionFrequency :: Maybe (Val Text)
  , _configConfigRuleSourceDetailMessageType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigConfigRuleSourceDetail where
  toJSON ConfigConfigRuleSourceDetail{..} =
    object $
    catMaybes
    [ (Just . ("EventSource",) . toJSON) _configConfigRuleSourceDetailEventSource
    , fmap (("MaximumExecutionFrequency",) . toJSON) _configConfigRuleSourceDetailMaximumExecutionFrequency
    , (Just . ("MessageType",) . toJSON) _configConfigRuleSourceDetailMessageType
    ]

instance FromJSON ConfigConfigRuleSourceDetail where
  parseJSON (Object obj) =
    ConfigConfigRuleSourceDetail <$>
      (obj .: "EventSource") <*>
      (obj .:? "MaximumExecutionFrequency") <*>
      (obj .: "MessageType")
  parseJSON _ = mempty

-- | Constructor for 'ConfigConfigRuleSourceDetail' containing required fields
-- as arguments.
configConfigRuleSourceDetail
  :: Val Text -- ^ 'ccrsdEventSource'
  -> Val Text -- ^ 'ccrsdMessageType'
  -> ConfigConfigRuleSourceDetail
configConfigRuleSourceDetail eventSourcearg messageTypearg =
  ConfigConfigRuleSourceDetail
  { _configConfigRuleSourceDetailEventSource = eventSourcearg
  , _configConfigRuleSourceDetailMaximumExecutionFrequency = Nothing
  , _configConfigRuleSourceDetailMessageType = messageTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-eventsource
ccrsdEventSource :: Lens' ConfigConfigRuleSourceDetail (Val Text)
ccrsdEventSource = lens _configConfigRuleSourceDetailEventSource (\s a -> s { _configConfigRuleSourceDetailEventSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-sourcedetail-maximumexecutionfrequency
ccrsdMaximumExecutionFrequency :: Lens' ConfigConfigRuleSourceDetail (Maybe (Val Text))
ccrsdMaximumExecutionFrequency = lens _configConfigRuleSourceDetailMaximumExecutionFrequency (\s a -> s { _configConfigRuleSourceDetailMaximumExecutionFrequency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-messagetype
ccrsdMessageType :: Lens' ConfigConfigRuleSourceDetail (Val Text)
ccrsdMessageType = lens _configConfigRuleSourceDetailMessageType (\s a -> s { _configConfigRuleSourceDetailMessageType = a })
