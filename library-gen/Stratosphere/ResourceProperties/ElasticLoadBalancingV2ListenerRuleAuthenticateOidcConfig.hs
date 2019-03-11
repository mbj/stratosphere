{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig. See
-- 'elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig =
  ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig
  { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthenticationRequestExtraParams :: Maybe Object
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthorizationEndpoint :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientId :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientSecret :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigIssuer :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigOnUnauthenticatedRequest :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigScope :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionCookieName :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionTimeout :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigTokenEndpoint :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigUserInfoEndpoint :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig{..} =
    object $
    catMaybes
    [ fmap (("AuthenticationRequestExtraParams",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthenticationRequestExtraParams
    , (Just . ("AuthorizationEndpoint",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthorizationEndpoint
    , (Just . ("ClientId",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientId
    , (Just . ("ClientSecret",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientSecret
    , (Just . ("Issuer",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigIssuer
    , fmap (("OnUnauthenticatedRequest",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigOnUnauthenticatedRequest
    , fmap (("Scope",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigScope
    , fmap (("SessionCookieName",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionCookieName
    , fmap (("SessionTimeout",) . toJSON . fmap Integer') _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionTimeout
    , (Just . ("TokenEndpoint",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigTokenEndpoint
    , (Just . ("UserInfoEndpoint",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigUserInfoEndpoint
    ]

-- | Constructor for
-- 'ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig
  :: Val Text -- ^ 'elbvlraocAuthorizationEndpoint'
  -> Val Text -- ^ 'elbvlraocClientId'
  -> Val Text -- ^ 'elbvlraocClientSecret'
  -> Val Text -- ^ 'elbvlraocIssuer'
  -> Val Text -- ^ 'elbvlraocTokenEndpoint'
  -> Val Text -- ^ 'elbvlraocUserInfoEndpoint'
  -> ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig
elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig authorizationEndpointarg clientIdarg clientSecretarg issuerarg tokenEndpointarg userInfoEndpointarg =
  ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig
  { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthenticationRequestExtraParams = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthorizationEndpoint = authorizationEndpointarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientId = clientIdarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientSecret = clientSecretarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigIssuer = issuerarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigOnUnauthenticatedRequest = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigScope = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionCookieName = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionTimeout = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigTokenEndpoint = tokenEndpointarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigUserInfoEndpoint = userInfoEndpointarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-authenticationrequestextraparams
elbvlraocAuthenticationRequestExtraParams :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Maybe Object)
elbvlraocAuthenticationRequestExtraParams = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthenticationRequestExtraParams (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthenticationRequestExtraParams = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-authorizationendpoint
elbvlraocAuthorizationEndpoint :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Val Text)
elbvlraocAuthorizationEndpoint = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthorizationEndpoint (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigAuthorizationEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-clientid
elbvlraocClientId :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Val Text)
elbvlraocClientId = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientId (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-clientsecret
elbvlraocClientSecret :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Val Text)
elbvlraocClientSecret = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientSecret (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-issuer
elbvlraocIssuer :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Val Text)
elbvlraocIssuer = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigIssuer (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigIssuer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-onunauthenticatedrequest
elbvlraocOnUnauthenticatedRequest :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Maybe (Val Text))
elbvlraocOnUnauthenticatedRequest = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigOnUnauthenticatedRequest (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigOnUnauthenticatedRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-scope
elbvlraocScope :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Maybe (Val Text))
elbvlraocScope = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigScope (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-sessioncookiename
elbvlraocSessionCookieName :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Maybe (Val Text))
elbvlraocSessionCookieName = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionCookieName (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionCookieName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-sessiontimeout
elbvlraocSessionTimeout :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Maybe (Val Integer))
elbvlraocSessionTimeout = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionTimeout (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigSessionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-tokenendpoint
elbvlraocTokenEndpoint :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Val Text)
elbvlraocTokenEndpoint = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigTokenEndpoint (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigTokenEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-userinfoendpoint
elbvlraocUserInfoEndpoint :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig (Val Text)
elbvlraocUserInfoEndpoint = lens _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigUserInfoEndpoint (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateOidcConfigUserInfoEndpoint = a })
