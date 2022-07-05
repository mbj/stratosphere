{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html

module Stratosphere.Resources.Route53ResolverResolverRuleAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53ResolverResolverRuleAssociation. See
-- 'route53ResolverResolverRuleAssociation' for a more convenient
-- constructor.
data Route53ResolverResolverRuleAssociation =
  Route53ResolverResolverRuleAssociation
  { _route53ResolverResolverRuleAssociationName :: Maybe (Val Text)
  , _route53ResolverResolverRuleAssociationResolverRuleId :: Val Text
  , _route53ResolverResolverRuleAssociationVPCId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties Route53ResolverResolverRuleAssociation where
  toResourceProperties Route53ResolverResolverRuleAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53Resolver::ResolverRuleAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Name",) . toJSON) _route53ResolverResolverRuleAssociationName
        , (Just . ("ResolverRuleId",) . toJSON) _route53ResolverResolverRuleAssociationResolverRuleId
        , (Just . ("VPCId",) . toJSON) _route53ResolverResolverRuleAssociationVPCId
        ]
    }

-- | Constructor for 'Route53ResolverResolverRuleAssociation' containing
-- required fields as arguments.
route53ResolverResolverRuleAssociation
  :: Val Text -- ^ 'rrrraResolverRuleId'
  -> Val Text -- ^ 'rrrraVPCId'
  -> Route53ResolverResolverRuleAssociation
route53ResolverResolverRuleAssociation resolverRuleIdarg vPCIdarg =
  Route53ResolverResolverRuleAssociation
  { _route53ResolverResolverRuleAssociationName = Nothing
  , _route53ResolverResolverRuleAssociationResolverRuleId = resolverRuleIdarg
  , _route53ResolverResolverRuleAssociationVPCId = vPCIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-name
rrrraName :: Lens' Route53ResolverResolverRuleAssociation (Maybe (Val Text))
rrrraName = lens _route53ResolverResolverRuleAssociationName (\s a -> s { _route53ResolverResolverRuleAssociationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-resolverruleid
rrrraResolverRuleId :: Lens' Route53ResolverResolverRuleAssociation (Val Text)
rrrraResolverRuleId = lens _route53ResolverResolverRuleAssociationResolverRuleId (\s a -> s { _route53ResolverResolverRuleAssociationResolverRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-vpcid
rrrraVPCId :: Lens' Route53ResolverResolverRuleAssociation (Val Text)
rrrraVPCId = lens _route53ResolverResolverRuleAssociationVPCId (\s a -> s { _route53ResolverResolverRuleAssociationVPCId = a })
