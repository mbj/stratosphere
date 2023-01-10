
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAuthenticateOidcConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerAuthenticateOidcConfig. See
-- 'elasticLoadBalancingV2ListenerAuthenticateOidcConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerAuthenticateOidcConfig =
  ElasticLoadBalancingV2ListenerAuthenticateOidcConfig
  { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthenticationRequestExtraParams :: Maybe Object
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthorizationEndpoint :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientId :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientSecret :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigIssuer :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigOnUnauthenticatedRequest :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigScope :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionCookieName :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionTimeout :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigTokenEndpoint :: Val Text
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigUserInfoEndpoint :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerAuthenticateOidcConfig where
  toJSON ElasticLoadBalancingV2ListenerAuthenticateOidcConfig{..} =
    object $
    catMaybes
    [ fmap (("AuthenticationRequestExtraParams",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthenticationRequestExtraParams
    , (Just . ("AuthorizationEndpoint",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthorizationEndpoint
    , (Just . ("ClientId",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientId
    , (Just . ("ClientSecret",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientSecret
    , (Just . ("Issuer",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigIssuer
    , fmap (("OnUnauthenticatedRequest",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigOnUnauthenticatedRequest
    , fmap (("Scope",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigScope
    , fmap (("SessionCookieName",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionCookieName
    , fmap (("SessionTimeout",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionTimeout
    , (Just . ("TokenEndpoint",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigTokenEndpoint
    , (Just . ("UserInfoEndpoint",) . toJSON) _elasticLoadBalancingV2ListenerAuthenticateOidcConfigUserInfoEndpoint
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerAuthenticateOidcConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerAuthenticateOidcConfig
  :: Val Text -- ^ 'elbvlaocAuthorizationEndpoint'
  -> Val Text -- ^ 'elbvlaocClientId'
  -> Val Text -- ^ 'elbvlaocClientSecret'
  -> Val Text -- ^ 'elbvlaocIssuer'
  -> Val Text -- ^ 'elbvlaocTokenEndpoint'
  -> Val Text -- ^ 'elbvlaocUserInfoEndpoint'
  -> ElasticLoadBalancingV2ListenerAuthenticateOidcConfig
elasticLoadBalancingV2ListenerAuthenticateOidcConfig authorizationEndpointarg clientIdarg clientSecretarg issuerarg tokenEndpointarg userInfoEndpointarg =
  ElasticLoadBalancingV2ListenerAuthenticateOidcConfig
  { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthenticationRequestExtraParams = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthorizationEndpoint = authorizationEndpointarg
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientId = clientIdarg
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientSecret = clientSecretarg
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigIssuer = issuerarg
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigOnUnauthenticatedRequest = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigScope = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionCookieName = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionTimeout = Nothing
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigTokenEndpoint = tokenEndpointarg
  , _elasticLoadBalancingV2ListenerAuthenticateOidcConfigUserInfoEndpoint = userInfoEndpointarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-authenticationrequestextraparams
elbvlaocAuthenticationRequestExtraParams :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Maybe Object)
elbvlaocAuthenticationRequestExtraParams = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthenticationRequestExtraParams (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthenticationRequestExtraParams = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-authorizationendpoint
elbvlaocAuthorizationEndpoint :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Val Text)
elbvlaocAuthorizationEndpoint = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthorizationEndpoint (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigAuthorizationEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-clientid
elbvlaocClientId :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Val Text)
elbvlaocClientId = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientId (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-clientsecret
elbvlaocClientSecret :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Val Text)
elbvlaocClientSecret = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientSecret (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-issuer
elbvlaocIssuer :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Val Text)
elbvlaocIssuer = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigIssuer (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigIssuer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-onunauthenticatedrequest
elbvlaocOnUnauthenticatedRequest :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Maybe (Val Text))
elbvlaocOnUnauthenticatedRequest = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigOnUnauthenticatedRequest (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigOnUnauthenticatedRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-scope
elbvlaocScope :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Maybe (Val Text))
elbvlaocScope = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigScope (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-sessioncookiename
elbvlaocSessionCookieName :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Maybe (Val Text))
elbvlaocSessionCookieName = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionCookieName (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionCookieName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-sessiontimeout
elbvlaocSessionTimeout :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Maybe (Val Integer))
elbvlaocSessionTimeout = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionTimeout (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigSessionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-tokenendpoint
elbvlaocTokenEndpoint :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Val Text)
elbvlaocTokenEndpoint = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigTokenEndpoint (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigTokenEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-userinfoendpoint
elbvlaocUserInfoEndpoint :: Lens' ElasticLoadBalancingV2ListenerAuthenticateOidcConfig (Val Text)
elbvlaocUserInfoEndpoint = lens _elasticLoadBalancingV2ListenerAuthenticateOidcConfigUserInfoEndpoint (\s a -> s { _elasticLoadBalancingV2ListenerAuthenticateOidcConfigUserInfoEndpoint = a })
