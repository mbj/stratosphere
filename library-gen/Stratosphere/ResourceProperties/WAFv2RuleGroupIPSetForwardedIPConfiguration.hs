{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetForwardedIPConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- WAFv2RuleGroupIPSetForwardedIPConfiguration. See
-- 'waFv2RuleGroupIPSetForwardedIPConfiguration' for a more convenient
-- constructor.
data WAFv2RuleGroupIPSetForwardedIPConfiguration =
  WAFv2RuleGroupIPSetForwardedIPConfiguration
  { _wAFv2RuleGroupIPSetForwardedIPConfigurationFallbackBehavior :: Val Text
  , _wAFv2RuleGroupIPSetForwardedIPConfigurationHeaderName :: Val Text
  , _wAFv2RuleGroupIPSetForwardedIPConfigurationPosition :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupIPSetForwardedIPConfiguration where
  toJSON WAFv2RuleGroupIPSetForwardedIPConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("FallbackBehavior",) . toJSON) _wAFv2RuleGroupIPSetForwardedIPConfigurationFallbackBehavior
    , (Just . ("HeaderName",) . toJSON) _wAFv2RuleGroupIPSetForwardedIPConfigurationHeaderName
    , (Just . ("Position",) . toJSON) _wAFv2RuleGroupIPSetForwardedIPConfigurationPosition
    ]

-- | Constructor for 'WAFv2RuleGroupIPSetForwardedIPConfiguration' containing
-- required fields as arguments.
waFv2RuleGroupIPSetForwardedIPConfiguration
  :: Val Text -- ^ 'wafrgipsfipcFallbackBehavior'
  -> Val Text -- ^ 'wafrgipsfipcHeaderName'
  -> Val Text -- ^ 'wafrgipsfipcPosition'
  -> WAFv2RuleGroupIPSetForwardedIPConfiguration
waFv2RuleGroupIPSetForwardedIPConfiguration fallbackBehaviorarg headerNamearg positionarg =
  WAFv2RuleGroupIPSetForwardedIPConfiguration
  { _wAFv2RuleGroupIPSetForwardedIPConfigurationFallbackBehavior = fallbackBehaviorarg
  , _wAFv2RuleGroupIPSetForwardedIPConfigurationHeaderName = headerNamearg
  , _wAFv2RuleGroupIPSetForwardedIPConfigurationPosition = positionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-fallbackbehavior
wafrgipsfipcFallbackBehavior :: Lens' WAFv2RuleGroupIPSetForwardedIPConfiguration (Val Text)
wafrgipsfipcFallbackBehavior = lens _wAFv2RuleGroupIPSetForwardedIPConfigurationFallbackBehavior (\s a -> s { _wAFv2RuleGroupIPSetForwardedIPConfigurationFallbackBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-headername
wafrgipsfipcHeaderName :: Lens' WAFv2RuleGroupIPSetForwardedIPConfiguration (Val Text)
wafrgipsfipcHeaderName = lens _wAFv2RuleGroupIPSetForwardedIPConfigurationHeaderName (\s a -> s { _wAFv2RuleGroupIPSetForwardedIPConfigurationHeaderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-position
wafrgipsfipcPosition :: Lens' WAFv2RuleGroupIPSetForwardedIPConfiguration (Val Text)
wafrgipsfipcPosition = lens _wAFv2RuleGroupIPSetForwardedIPConfigurationPosition (\s a -> s { _wAFv2RuleGroupIPSetForwardedIPConfigurationPosition = a })
