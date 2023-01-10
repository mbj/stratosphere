
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html

module Stratosphere.ResourceProperties.Route53ResolverResolverEndpointIpAddressRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- Route53ResolverResolverEndpointIpAddressRequest. See
-- 'route53ResolverResolverEndpointIpAddressRequest' for a more convenient
-- constructor.
data Route53ResolverResolverEndpointIpAddressRequest =
  Route53ResolverResolverEndpointIpAddressRequest
  { _route53ResolverResolverEndpointIpAddressRequestIp :: Maybe (Val Text)
  , _route53ResolverResolverEndpointIpAddressRequestSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53ResolverResolverEndpointIpAddressRequest where
  toJSON Route53ResolverResolverEndpointIpAddressRequest{..} =
    object $
    catMaybes
    [ fmap (("Ip",) . toJSON) _route53ResolverResolverEndpointIpAddressRequestIp
    , (Just . ("SubnetId",) . toJSON) _route53ResolverResolverEndpointIpAddressRequestSubnetId
    ]

-- | Constructor for 'Route53ResolverResolverEndpointIpAddressRequest'
-- containing required fields as arguments.
route53ResolverResolverEndpointIpAddressRequest
  :: Val Text -- ^ 'rrreiarSubnetId'
  -> Route53ResolverResolverEndpointIpAddressRequest
route53ResolverResolverEndpointIpAddressRequest subnetIdarg =
  Route53ResolverResolverEndpointIpAddressRequest
  { _route53ResolverResolverEndpointIpAddressRequestIp = Nothing
  , _route53ResolverResolverEndpointIpAddressRequestSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-ip
rrreiarIp :: Lens' Route53ResolverResolverEndpointIpAddressRequest (Maybe (Val Text))
rrreiarIp = lens _route53ResolverResolverEndpointIpAddressRequestIp (\s a -> s { _route53ResolverResolverEndpointIpAddressRequestIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-subnetid
rrreiarSubnetId :: Lens' Route53ResolverResolverEndpointIpAddressRequest (Val Text)
rrreiarSubnetId = lens _route53ResolverResolverEndpointIpAddressRequestSubnetId (\s a -> s { _route53ResolverResolverEndpointIpAddressRequestSubnetId = a })
