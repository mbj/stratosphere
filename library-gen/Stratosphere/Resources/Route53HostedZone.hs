{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html

module Stratosphere.Resources.Route53HostedZone where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneConfig
import Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneTag
import Stratosphere.ResourceProperties.Route53HostedZoneQueryLoggingConfig
import Stratosphere.ResourceProperties.Route53HostedZoneVPC

-- | Full data type definition for Route53HostedZone. See 'route53HostedZone'
-- for a more convenient constructor.
data Route53HostedZone =
  Route53HostedZone
  { _route53HostedZoneHostedZoneConfig :: Maybe Route53HostedZoneHostedZoneConfig
  , _route53HostedZoneHostedZoneTags :: Maybe [Route53HostedZoneHostedZoneTag]
  , _route53HostedZoneName :: Val Text
  , _route53HostedZoneQueryLoggingConfig :: Maybe Route53HostedZoneQueryLoggingConfig
  , _route53HostedZoneVPCs :: Maybe [Route53HostedZoneVPC]
  } deriving (Show, Eq)

instance ToResourceProperties Route53HostedZone where
  toResourceProperties Route53HostedZone{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53::HostedZone"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("HostedZoneConfig",) . toJSON) _route53HostedZoneHostedZoneConfig
        , fmap (("HostedZoneTags",) . toJSON) _route53HostedZoneHostedZoneTags
        , (Just . ("Name",) . toJSON) _route53HostedZoneName
        , fmap (("QueryLoggingConfig",) . toJSON) _route53HostedZoneQueryLoggingConfig
        , fmap (("VPCs",) . toJSON) _route53HostedZoneVPCs
        ]
    }

-- | Constructor for 'Route53HostedZone' containing required fields as
-- arguments.
route53HostedZone
  :: Val Text -- ^ 'rhzName'
  -> Route53HostedZone
route53HostedZone namearg =
  Route53HostedZone
  { _route53HostedZoneHostedZoneConfig = Nothing
  , _route53HostedZoneHostedZoneTags = Nothing
  , _route53HostedZoneName = namearg
  , _route53HostedZoneQueryLoggingConfig = Nothing
  , _route53HostedZoneVPCs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzoneconfig
rhzHostedZoneConfig :: Lens' Route53HostedZone (Maybe Route53HostedZoneHostedZoneConfig)
rhzHostedZoneConfig = lens _route53HostedZoneHostedZoneConfig (\s a -> s { _route53HostedZoneHostedZoneConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzonetags
rhzHostedZoneTags :: Lens' Route53HostedZone (Maybe [Route53HostedZoneHostedZoneTag])
rhzHostedZoneTags = lens _route53HostedZoneHostedZoneTags (\s a -> s { _route53HostedZoneHostedZoneTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-name
rhzName :: Lens' Route53HostedZone (Val Text)
rhzName = lens _route53HostedZoneName (\s a -> s { _route53HostedZoneName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-queryloggingconfig
rhzQueryLoggingConfig :: Lens' Route53HostedZone (Maybe Route53HostedZoneQueryLoggingConfig)
rhzQueryLoggingConfig = lens _route53HostedZoneQueryLoggingConfig (\s a -> s { _route53HostedZoneQueryLoggingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-vpcs
rhzVPCs :: Lens' Route53HostedZone (Maybe [Route53HostedZoneVPC])
rhzVPCs = lens _route53HostedZoneVPCs (\s a -> s { _route53HostedZoneVPCs = a })
