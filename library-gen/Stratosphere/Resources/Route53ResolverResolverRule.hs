{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html

module Stratosphere.Resources.Route53ResolverResolverRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.Route53ResolverResolverRuleTargetAddress

-- | Full data type definition for Route53ResolverResolverRule. See
-- 'route53ResolverResolverRule' for a more convenient constructor.
data Route53ResolverResolverRule =
  Route53ResolverResolverRule
  { _route53ResolverResolverRuleDomainName :: Val Text
  , _route53ResolverResolverRuleName :: Maybe (Val Text)
  , _route53ResolverResolverRuleResolverEndpointId :: Maybe (Val Text)
  , _route53ResolverResolverRuleRuleType :: Val Text
  , _route53ResolverResolverRuleTags :: Maybe [Tag]
  , _route53ResolverResolverRuleTargetIps :: Maybe [Route53ResolverResolverRuleTargetAddress]
  } deriving (Show, Eq)

instance ToResourceProperties Route53ResolverResolverRule where
  toResourceProperties Route53ResolverResolverRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53Resolver::ResolverRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DomainName",) . toJSON) _route53ResolverResolverRuleDomainName
        , fmap (("Name",) . toJSON) _route53ResolverResolverRuleName
        , fmap (("ResolverEndpointId",) . toJSON) _route53ResolverResolverRuleResolverEndpointId
        , (Just . ("RuleType",) . toJSON) _route53ResolverResolverRuleRuleType
        , fmap (("Tags",) . toJSON) _route53ResolverResolverRuleTags
        , fmap (("TargetIps",) . toJSON) _route53ResolverResolverRuleTargetIps
        ]
    }

-- | Constructor for 'Route53ResolverResolverRule' containing required fields
-- as arguments.
route53ResolverResolverRule
  :: Val Text -- ^ 'rrrrDomainName'
  -> Val Text -- ^ 'rrrrRuleType'
  -> Route53ResolverResolverRule
route53ResolverResolverRule domainNamearg ruleTypearg =
  Route53ResolverResolverRule
  { _route53ResolverResolverRuleDomainName = domainNamearg
  , _route53ResolverResolverRuleName = Nothing
  , _route53ResolverResolverRuleResolverEndpointId = Nothing
  , _route53ResolverResolverRuleRuleType = ruleTypearg
  , _route53ResolverResolverRuleTags = Nothing
  , _route53ResolverResolverRuleTargetIps = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-domainname
rrrrDomainName :: Lens' Route53ResolverResolverRule (Val Text)
rrrrDomainName = lens _route53ResolverResolverRuleDomainName (\s a -> s { _route53ResolverResolverRuleDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-name
rrrrName :: Lens' Route53ResolverResolverRule (Maybe (Val Text))
rrrrName = lens _route53ResolverResolverRuleName (\s a -> s { _route53ResolverResolverRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-resolverendpointid
rrrrResolverEndpointId :: Lens' Route53ResolverResolverRule (Maybe (Val Text))
rrrrResolverEndpointId = lens _route53ResolverResolverRuleResolverEndpointId (\s a -> s { _route53ResolverResolverRuleResolverEndpointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-ruletype
rrrrRuleType :: Lens' Route53ResolverResolverRule (Val Text)
rrrrRuleType = lens _route53ResolverResolverRuleRuleType (\s a -> s { _route53ResolverResolverRuleRuleType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-tags
rrrrTags :: Lens' Route53ResolverResolverRule (Maybe [Tag])
rrrrTags = lens _route53ResolverResolverRuleTags (\s a -> s { _route53ResolverResolverRuleTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-targetips
rrrrTargetIps :: Lens' Route53ResolverResolverRule (Maybe [Route53ResolverResolverRuleTargetAddress])
rrrrTargetIps = lens _route53ResolverResolverRuleTargetIps (\s a -> s { _route53ResolverResolverRuleTargetIps = a })
