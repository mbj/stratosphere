
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetforwardedipconfiguration.html

module Stratosphere.ResourceProperties.WAFv2WebACLIPSetForwardedIPConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLIPSetForwardedIPConfiguration.
-- See 'waFv2WebACLIPSetForwardedIPConfiguration' for a more convenient
-- constructor.
data WAFv2WebACLIPSetForwardedIPConfiguration =
  WAFv2WebACLIPSetForwardedIPConfiguration
  { _wAFv2WebACLIPSetForwardedIPConfigurationFallbackBehavior :: Val Text
  , _wAFv2WebACLIPSetForwardedIPConfigurationHeaderName :: Val Text
  , _wAFv2WebACLIPSetForwardedIPConfigurationPosition :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLIPSetForwardedIPConfiguration where
  toJSON WAFv2WebACLIPSetForwardedIPConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("FallbackBehavior",) . toJSON) _wAFv2WebACLIPSetForwardedIPConfigurationFallbackBehavior
    , (Just . ("HeaderName",) . toJSON) _wAFv2WebACLIPSetForwardedIPConfigurationHeaderName
    , (Just . ("Position",) . toJSON) _wAFv2WebACLIPSetForwardedIPConfigurationPosition
    ]

-- | Constructor for 'WAFv2WebACLIPSetForwardedIPConfiguration' containing
-- required fields as arguments.
waFv2WebACLIPSetForwardedIPConfiguration
  :: Val Text -- ^ 'wafwaclipsfipcFallbackBehavior'
  -> Val Text -- ^ 'wafwaclipsfipcHeaderName'
  -> Val Text -- ^ 'wafwaclipsfipcPosition'
  -> WAFv2WebACLIPSetForwardedIPConfiguration
waFv2WebACLIPSetForwardedIPConfiguration fallbackBehaviorarg headerNamearg positionarg =
  WAFv2WebACLIPSetForwardedIPConfiguration
  { _wAFv2WebACLIPSetForwardedIPConfigurationFallbackBehavior = fallbackBehaviorarg
  , _wAFv2WebACLIPSetForwardedIPConfigurationHeaderName = headerNamearg
  , _wAFv2WebACLIPSetForwardedIPConfigurationPosition = positionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetforwardedipconfiguration.html#cfn-wafv2-webacl-ipsetforwardedipconfiguration-fallbackbehavior
wafwaclipsfipcFallbackBehavior :: Lens' WAFv2WebACLIPSetForwardedIPConfiguration (Val Text)
wafwaclipsfipcFallbackBehavior = lens _wAFv2WebACLIPSetForwardedIPConfigurationFallbackBehavior (\s a -> s { _wAFv2WebACLIPSetForwardedIPConfigurationFallbackBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetforwardedipconfiguration.html#cfn-wafv2-webacl-ipsetforwardedipconfiguration-headername
wafwaclipsfipcHeaderName :: Lens' WAFv2WebACLIPSetForwardedIPConfiguration (Val Text)
wafwaclipsfipcHeaderName = lens _wAFv2WebACLIPSetForwardedIPConfigurationHeaderName (\s a -> s { _wAFv2WebACLIPSetForwardedIPConfigurationHeaderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetforwardedipconfiguration.html#cfn-wafv2-webacl-ipsetforwardedipconfiguration-position
wafwaclipsfipcPosition :: Lens' WAFv2WebACLIPSetForwardedIPConfiguration (Val Text)
wafwaclipsfipcPosition = lens _wAFv2WebACLIPSetForwardedIPConfigurationPosition (\s a -> s { _wAFv2WebACLIPSetForwardedIPConfigurationPosition = a })
