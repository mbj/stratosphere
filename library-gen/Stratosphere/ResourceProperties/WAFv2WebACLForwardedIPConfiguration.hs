
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-forwardedipconfiguration.html

module Stratosphere.ResourceProperties.WAFv2WebACLForwardedIPConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLForwardedIPConfiguration. See
-- 'waFv2WebACLForwardedIPConfiguration' for a more convenient constructor.
data WAFv2WebACLForwardedIPConfiguration =
  WAFv2WebACLForwardedIPConfiguration
  { _wAFv2WebACLForwardedIPConfigurationFallbackBehavior :: Val Text
  , _wAFv2WebACLForwardedIPConfigurationHeaderName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLForwardedIPConfiguration where
  toJSON WAFv2WebACLForwardedIPConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("FallbackBehavior",) . toJSON) _wAFv2WebACLForwardedIPConfigurationFallbackBehavior
    , (Just . ("HeaderName",) . toJSON) _wAFv2WebACLForwardedIPConfigurationHeaderName
    ]

-- | Constructor for 'WAFv2WebACLForwardedIPConfiguration' containing required
-- fields as arguments.
waFv2WebACLForwardedIPConfiguration
  :: Val Text -- ^ 'wafwaclfipcFallbackBehavior'
  -> Val Text -- ^ 'wafwaclfipcHeaderName'
  -> WAFv2WebACLForwardedIPConfiguration
waFv2WebACLForwardedIPConfiguration fallbackBehaviorarg headerNamearg =
  WAFv2WebACLForwardedIPConfiguration
  { _wAFv2WebACLForwardedIPConfigurationFallbackBehavior = fallbackBehaviorarg
  , _wAFv2WebACLForwardedIPConfigurationHeaderName = headerNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-forwardedipconfiguration.html#cfn-wafv2-webacl-forwardedipconfiguration-fallbackbehavior
wafwaclfipcFallbackBehavior :: Lens' WAFv2WebACLForwardedIPConfiguration (Val Text)
wafwaclfipcFallbackBehavior = lens _wAFv2WebACLForwardedIPConfigurationFallbackBehavior (\s a -> s { _wAFv2WebACLForwardedIPConfigurationFallbackBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-forwardedipconfiguration.html#cfn-wafv2-webacl-forwardedipconfiguration-headername
wafwaclfipcHeaderName :: Lens' WAFv2WebACLForwardedIPConfiguration (Val Text)
wafwaclfipcHeaderName = lens _wAFv2WebACLForwardedIPConfigurationHeaderName (\s a -> s { _wAFv2WebACLForwardedIPConfigurationHeaderName = a })
