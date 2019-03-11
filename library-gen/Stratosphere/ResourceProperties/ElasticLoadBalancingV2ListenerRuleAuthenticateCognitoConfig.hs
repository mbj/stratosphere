{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig. See
-- 'elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig =
  ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig
  { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigAuthenticationRequestExtraParams :: Maybe Object
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigOnUnauthenticatedRequest :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigScope :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionCookieName :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionTimeout :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolArn :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolClientId :: Val Text
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolDomain :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig{..} =
    object $
    catMaybes
    [ fmap (("AuthenticationRequestExtraParams",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigAuthenticationRequestExtraParams
    , fmap (("OnUnauthenticatedRequest",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigOnUnauthenticatedRequest
    , fmap (("Scope",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigScope
    , fmap (("SessionCookieName",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionCookieName
    , fmap (("SessionTimeout",) . toJSON . fmap Integer') _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionTimeout
    , (Just . ("UserPoolArn",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolArn
    , (Just . ("UserPoolClientId",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolClientId
    , (Just . ("UserPoolDomain",) . toJSON) _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolDomain
    ]

-- | Constructor for
-- 'ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig
  :: Val Text -- ^ 'elbvlraccUserPoolArn'
  -> Val Text -- ^ 'elbvlraccUserPoolClientId'
  -> Val Text -- ^ 'elbvlraccUserPoolDomain'
  -> ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig
elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig userPoolArnarg userPoolClientIdarg userPoolDomainarg =
  ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig
  { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigAuthenticationRequestExtraParams = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigOnUnauthenticatedRequest = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigScope = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionCookieName = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionTimeout = Nothing
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolArn = userPoolArnarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolClientId = userPoolClientIdarg
  , _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolDomain = userPoolDomainarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-authenticationrequestextraparams
elbvlraccAuthenticationRequestExtraParams :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Maybe Object)
elbvlraccAuthenticationRequestExtraParams = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigAuthenticationRequestExtraParams (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigAuthenticationRequestExtraParams = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-onunauthenticatedrequest
elbvlraccOnUnauthenticatedRequest :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Maybe (Val Text))
elbvlraccOnUnauthenticatedRequest = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigOnUnauthenticatedRequest (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigOnUnauthenticatedRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-scope
elbvlraccScope :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Maybe (Val Text))
elbvlraccScope = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigScope (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-sessioncookiename
elbvlraccSessionCookieName :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Maybe (Val Text))
elbvlraccSessionCookieName = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionCookieName (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionCookieName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-sessiontimeout
elbvlraccSessionTimeout :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Maybe (Val Integer))
elbvlraccSessionTimeout = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionTimeout (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigSessionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-userpoolarn
elbvlraccUserPoolArn :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Val Text)
elbvlraccUserPoolArn = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolArn (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-userpoolclientid
elbvlraccUserPoolClientId :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Val Text)
elbvlraccUserPoolClientId = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolClientId (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-userpooldomain
elbvlraccUserPoolDomain :: Lens' ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig (Val Text)
elbvlraccUserPoolDomain = lens _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolDomain (\s a -> s { _elasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfigUserPoolDomain = a })
