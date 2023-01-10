
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig. See
-- 'elasticLoadBalancingV2ListenerAuthenticateCognitoConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig =
  ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig
  { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigAuthenticationRequestExtraParams :: Maybe Object
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigOnUnauthenticatedRequest :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigScope :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionCookieName :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionTimeout :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolArn :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolClientId :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolDomain :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig where
  toJSON ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig{..} =
    object $
    catMaybes
    [ fmap (("AuthenticationRequestExtraParams",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigAuthenticationRequestExtraParams
    , fmap (("OnUnauthenticatedRequest",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigOnUnauthenticatedRequest
    , fmap (("Scope",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigScope
    , fmap (("SessionCookieName",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionCookieName
    , fmap (("SessionTimeout",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionTimeout
    , (Just . ("UserPoolArn",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolArn
    , (Just . ("UserPoolClientId",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolClientId
    , (Just . ("UserPoolDomain",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolDomain
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerAuthenticateCognitoConfig
  :: Val Text -- ^ 'elbvlaccUserPoolArn'
  -> Val Text -- ^ 'elbvlaccUserPoolClientId'
  -> Val Text -- ^ 'elbvlaccUserPoolDomain'
  -> ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig
elasticLoadBalancingV2ListenerAuthenticateCognitoConfig userPoolArnarg userPoolClientIdarg userPoolDomainarg =
  ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig
  { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigAuthenticationRequestExtraParams = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigOnUnauthenticatedRequest = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigScope = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionCookieName = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionTimeout = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolArn = userPoolArnarg
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolClientId = userPoolClientIdarg
  , _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolDomain = userPoolDomainarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-authenticationrequestextraparams
elbvlaccAuthenticationRequestExtraParams :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Maybe Object)
elbvlaccAuthenticationRequestExtraParams = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigAuthenticationRequestExtraParams (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigAuthenticationRequestExtraParams = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-onunauthenticatedrequest
elbvlaccOnUnauthenticatedRequest :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Maybe (Val Text))
elbvlaccOnUnauthenticatedRequest = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigOnUnauthenticatedRequest (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigOnUnauthenticatedRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-scope
elbvlaccScope :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Maybe (Val Text))
elbvlaccScope = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigScope (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-sessioncookiename
elbvlaccSessionCookieName :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Maybe (Val Text))
elbvlaccSessionCookieName = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionCookieName (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionCookieName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-sessiontimeout
elbvlaccSessionTimeout :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Maybe (Val Integer))
elbvlaccSessionTimeout = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionTimeout (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigSessionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpoolarn
elbvlaccUserPoolArn :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Val Text)
elbvlaccUserPoolArn = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolArn (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpoolclientid
elbvlaccUserPoolClientId :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Val Text)
elbvlaccUserPoolClientId = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolClientId (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpooldomain
elbvlaccUserPoolDomain :: Lens' ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig (Val Text)
elbvlaccUserPoolDomain = lens _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolDomain (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateCognitoConfigUserPoolDomain = a })
