{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfigassociation.html

module Stratosphere.Resources.Route53ResolverResolverQueryLoggingConfigAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- Route53ResolverResolverQueryLoggingConfigAssociation. See
-- 'route53ResolverResolverQueryLoggingConfigAssociation' for a more
-- convenient constructor.
data Route53ResolverResolverQueryLoggingConfigAssociation =
  Route53ResolverResolverQueryLoggingConfigAssociation
  { _route53ResolverResolverQueryLoggingConfigAssociationResolverQueryLogConfigId :: Maybe (Val Text)
  , _route53ResolverResolverQueryLoggingConfigAssociationResourceId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties Route53ResolverResolverQueryLoggingConfigAssociation where
  toResourceProperties Route53ResolverResolverQueryLoggingConfigAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ResolverQueryLogConfigId",) . toJSON) _route53ResolverResolverQueryLoggingConfigAssociationResolverQueryLogConfigId
        , fmap (("ResourceId",) . toJSON) _route53ResolverResolverQueryLoggingConfigAssociationResourceId
        ]
    }

-- | Constructor for 'Route53ResolverResolverQueryLoggingConfigAssociation'
-- containing required fields as arguments.
route53ResolverResolverQueryLoggingConfigAssociation
  :: Route53ResolverResolverQueryLoggingConfigAssociation
route53ResolverResolverQueryLoggingConfigAssociation  =
  Route53ResolverResolverQueryLoggingConfigAssociation
  { _route53ResolverResolverQueryLoggingConfigAssociationResolverQueryLogConfigId = Nothing
  , _route53ResolverResolverQueryLoggingConfigAssociationResourceId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfigassociation.html#cfn-route53resolver-resolverqueryloggingconfigassociation-resolverquerylogconfigid
rrrqlcaResolverQueryLogConfigId :: Lens' Route53ResolverResolverQueryLoggingConfigAssociation (Maybe (Val Text))
rrrqlcaResolverQueryLogConfigId = lens _route53ResolverResolverQueryLoggingConfigAssociationResolverQueryLogConfigId (\s a -> s { _route53ResolverResolverQueryLoggingConfigAssociationResolverQueryLogConfigId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfigassociation.html#cfn-route53resolver-resolverqueryloggingconfigassociation-resourceid
rrrqlcaResourceId :: Lens' Route53ResolverResolverQueryLoggingConfigAssociation (Maybe (Val Text))
rrrqlcaResourceId = lens _route53ResolverResolverQueryLoggingConfigAssociationResourceId (\s a -> s { _route53ResolverResolverQueryLoggingConfigAssociationResourceId = a })
