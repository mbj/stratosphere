{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html

module Stratosphere.Resources.Route53ResolverResolverEndpoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Route53ResolverResolverEndpointIpAddressRequest
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for Route53ResolverResolverEndpoint. See
-- 'route53ResolverResolverEndpoint' for a more convenient constructor.
data Route53ResolverResolverEndpoint =
  Route53ResolverResolverEndpoint
  { _route53ResolverResolverEndpointDirection :: Val Text
  , _route53ResolverResolverEndpointIpAddresses :: [Route53ResolverResolverEndpointIpAddressRequest]
  , _route53ResolverResolverEndpointName :: Maybe (Val Text)
  , _route53ResolverResolverEndpointSecurityGroupIds :: ValList Text
  , _route53ResolverResolverEndpointTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties Route53ResolverResolverEndpoint where
  toResourceProperties Route53ResolverResolverEndpoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53Resolver::ResolverEndpoint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Direction",) . toJSON) _route53ResolverResolverEndpointDirection
        , (Just . ("IpAddresses",) . toJSON) _route53ResolverResolverEndpointIpAddresses
        , fmap (("Name",) . toJSON) _route53ResolverResolverEndpointName
        , (Just . ("SecurityGroupIds",) . toJSON) _route53ResolverResolverEndpointSecurityGroupIds
        , fmap (("Tags",) . toJSON) _route53ResolverResolverEndpointTags
        ]
    }

-- | Constructor for 'Route53ResolverResolverEndpoint' containing required
-- fields as arguments.
route53ResolverResolverEndpoint
  :: Val Text -- ^ 'rrreDirection'
  -> [Route53ResolverResolverEndpointIpAddressRequest] -- ^ 'rrreIpAddresses'
  -> ValList Text -- ^ 'rrreSecurityGroupIds'
  -> Route53ResolverResolverEndpoint
route53ResolverResolverEndpoint directionarg ipAddressesarg securityGroupIdsarg =
  Route53ResolverResolverEndpoint
  { _route53ResolverResolverEndpointDirection = directionarg
  , _route53ResolverResolverEndpointIpAddresses = ipAddressesarg
  , _route53ResolverResolverEndpointName = Nothing
  , _route53ResolverResolverEndpointSecurityGroupIds = securityGroupIdsarg
  , _route53ResolverResolverEndpointTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-direction
rrreDirection :: Lens' Route53ResolverResolverEndpoint (Val Text)
rrreDirection = lens _route53ResolverResolverEndpointDirection (\s a -> s { _route53ResolverResolverEndpointDirection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-ipaddresses
rrreIpAddresses :: Lens' Route53ResolverResolverEndpoint [Route53ResolverResolverEndpointIpAddressRequest]
rrreIpAddresses = lens _route53ResolverResolverEndpointIpAddresses (\s a -> s { _route53ResolverResolverEndpointIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-name
rrreName :: Lens' Route53ResolverResolverEndpoint (Maybe (Val Text))
rrreName = lens _route53ResolverResolverEndpointName (\s a -> s { _route53ResolverResolverEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-securitygroupids
rrreSecurityGroupIds :: Lens' Route53ResolverResolverEndpoint (ValList Text)
rrreSecurityGroupIds = lens _route53ResolverResolverEndpointSecurityGroupIds (\s a -> s { _route53ResolverResolverEndpointSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-tags
rrreTags :: Lens' Route53ResolverResolverEndpoint (Maybe [Tag])
rrreTags = lens _route53ResolverResolverEndpointTags (\s a -> s { _route53ResolverResolverEndpointTags = a })
