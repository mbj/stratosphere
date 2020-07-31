{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-forwardedipconfiguration.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupForwardedIPConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupForwardedIPConfiguration. See
-- 'waFv2RuleGroupForwardedIPConfiguration' for a more convenient
-- constructor.
data WAFv2RuleGroupForwardedIPConfiguration =
  WAFv2RuleGroupForwardedIPConfiguration
  { _wAFv2RuleGroupForwardedIPConfigurationFallbackBehavior :: Val Text
  , _wAFv2RuleGroupForwardedIPConfigurationHeaderName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupForwardedIPConfiguration where
  toJSON WAFv2RuleGroupForwardedIPConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("FallbackBehavior",) . toJSON) _wAFv2RuleGroupForwardedIPConfigurationFallbackBehavior
    , (Just . ("HeaderName",) . toJSON) _wAFv2RuleGroupForwardedIPConfigurationHeaderName
    ]

-- | Constructor for 'WAFv2RuleGroupForwardedIPConfiguration' containing
-- required fields as arguments.
waFv2RuleGroupForwardedIPConfiguration
  :: Val Text -- ^ 'wafrgfipcFallbackBehavior'
  -> Val Text -- ^ 'wafrgfipcHeaderName'
  -> WAFv2RuleGroupForwardedIPConfiguration
waFv2RuleGroupForwardedIPConfiguration fallbackBehaviorarg headerNamearg =
  WAFv2RuleGroupForwardedIPConfiguration
  { _wAFv2RuleGroupForwardedIPConfigurationFallbackBehavior = fallbackBehaviorarg
  , _wAFv2RuleGroupForwardedIPConfigurationHeaderName = headerNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-forwardedipconfiguration.html#cfn-wafv2-rulegroup-forwardedipconfiguration-fallbackbehavior
wafrgfipcFallbackBehavior :: Lens' WAFv2RuleGroupForwardedIPConfiguration (Val Text)
wafrgfipcFallbackBehavior = lens _wAFv2RuleGroupForwardedIPConfigurationFallbackBehavior (\s a -> s { _wAFv2RuleGroupForwardedIPConfigurationFallbackBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-forwardedipconfiguration.html#cfn-wafv2-rulegroup-forwardedipconfiguration-headername
wafrgfipcHeaderName :: Lens' WAFv2RuleGroupForwardedIPConfiguration (Val Text)
wafrgfipcHeaderName = lens _wAFv2RuleGroupForwardedIPConfigurationHeaderName (\s a -> s { _wAFv2RuleGroupForwardedIPConfigurationHeaderName = a })
