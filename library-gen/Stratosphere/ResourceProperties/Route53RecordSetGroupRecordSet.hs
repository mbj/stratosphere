{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html

module Stratosphere.ResourceProperties.Route53RecordSetGroupRecordSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Route53RecordSetGroupAliasTarget
import Stratosphere.ResourceProperties.Route53RecordSetGroupGeoLocation

-- | Full data type definition for Route53RecordSetGroupRecordSet. See
-- 'route53RecordSetGroupRecordSet' for a more convenient constructor.
data Route53RecordSetGroupRecordSet =
  Route53RecordSetGroupRecordSet
  { _route53RecordSetGroupRecordSetAliasTarget :: Maybe Route53RecordSetGroupAliasTarget
  , _route53RecordSetGroupRecordSetComment :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetFailover :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetGeoLocation :: Maybe Route53RecordSetGroupGeoLocation
  , _route53RecordSetGroupRecordSetHealthCheckId :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetHostedZoneId :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetHostedZoneName :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetMultiValueAnswer :: Maybe (Val Bool)
  , _route53RecordSetGroupRecordSetName :: Val Text
  , _route53RecordSetGroupRecordSetRegion :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetResourceRecords :: Maybe (ValList Text)
  , _route53RecordSetGroupRecordSetSetIdentifier :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetTTL :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSetType :: Val Text
  , _route53RecordSetGroupRecordSetWeight :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON Route53RecordSetGroupRecordSet where
  toJSON Route53RecordSetGroupRecordSet{..} =
    object $
    catMaybes
    [ fmap (("AliasTarget",) . toJSON) _route53RecordSetGroupRecordSetAliasTarget
    , fmap (("Comment",) . toJSON) _route53RecordSetGroupRecordSetComment
    , fmap (("Failover",) . toJSON) _route53RecordSetGroupRecordSetFailover
    , fmap (("GeoLocation",) . toJSON) _route53RecordSetGroupRecordSetGeoLocation
    , fmap (("HealthCheckId",) . toJSON) _route53RecordSetGroupRecordSetHealthCheckId
    , fmap (("HostedZoneId",) . toJSON) _route53RecordSetGroupRecordSetHostedZoneId
    , fmap (("HostedZoneName",) . toJSON) _route53RecordSetGroupRecordSetHostedZoneName
    , fmap (("MultiValueAnswer",) . toJSON . fmap Bool') _route53RecordSetGroupRecordSetMultiValueAnswer
    , (Just . ("Name",) . toJSON) _route53RecordSetGroupRecordSetName
    , fmap (("Region",) . toJSON) _route53RecordSetGroupRecordSetRegion
    , fmap (("ResourceRecords",) . toJSON) _route53RecordSetGroupRecordSetResourceRecords
    , fmap (("SetIdentifier",) . toJSON) _route53RecordSetGroupRecordSetSetIdentifier
    , fmap (("TTL",) . toJSON) _route53RecordSetGroupRecordSetTTL
    , (Just . ("Type",) . toJSON) _route53RecordSetGroupRecordSetType
    , fmap (("Weight",) . toJSON . fmap Integer') _route53RecordSetGroupRecordSetWeight
    ]

-- | Constructor for 'Route53RecordSetGroupRecordSet' containing required
-- fields as arguments.
route53RecordSetGroupRecordSet
  :: Val Text -- ^ 'rrsgrsName'
  -> Val Text -- ^ 'rrsgrsType'
  -> Route53RecordSetGroupRecordSet
route53RecordSetGroupRecordSet namearg typearg =
  Route53RecordSetGroupRecordSet
  { _route53RecordSetGroupRecordSetAliasTarget = Nothing
  , _route53RecordSetGroupRecordSetComment = Nothing
  , _route53RecordSetGroupRecordSetFailover = Nothing
  , _route53RecordSetGroupRecordSetGeoLocation = Nothing
  , _route53RecordSetGroupRecordSetHealthCheckId = Nothing
  , _route53RecordSetGroupRecordSetHostedZoneId = Nothing
  , _route53RecordSetGroupRecordSetHostedZoneName = Nothing
  , _route53RecordSetGroupRecordSetMultiValueAnswer = Nothing
  , _route53RecordSetGroupRecordSetName = namearg
  , _route53RecordSetGroupRecordSetRegion = Nothing
  , _route53RecordSetGroupRecordSetResourceRecords = Nothing
  , _route53RecordSetGroupRecordSetSetIdentifier = Nothing
  , _route53RecordSetGroupRecordSetTTL = Nothing
  , _route53RecordSetGroupRecordSetType = typearg
  , _route53RecordSetGroupRecordSetWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-aliastarget
rrsgrsAliasTarget :: Lens' Route53RecordSetGroupRecordSet (Maybe Route53RecordSetGroupAliasTarget)
rrsgrsAliasTarget = lens _route53RecordSetGroupRecordSetAliasTarget (\s a -> s { _route53RecordSetGroupRecordSetAliasTarget = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-comment
rrsgrsComment :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsComment = lens _route53RecordSetGroupRecordSetComment (\s a -> s { _route53RecordSetGroupRecordSetComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-failover
rrsgrsFailover :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsFailover = lens _route53RecordSetGroupRecordSetFailover (\s a -> s { _route53RecordSetGroupRecordSetFailover = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-geolocation
rrsgrsGeoLocation :: Lens' Route53RecordSetGroupRecordSet (Maybe Route53RecordSetGroupGeoLocation)
rrsgrsGeoLocation = lens _route53RecordSetGroupRecordSetGeoLocation (\s a -> s { _route53RecordSetGroupRecordSetGeoLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-healthcheckid
rrsgrsHealthCheckId :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsHealthCheckId = lens _route53RecordSetGroupRecordSetHealthCheckId (\s a -> s { _route53RecordSetGroupRecordSetHealthCheckId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzoneid
rrsgrsHostedZoneId :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsHostedZoneId = lens _route53RecordSetGroupRecordSetHostedZoneId (\s a -> s { _route53RecordSetGroupRecordSetHostedZoneId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzonename
rrsgrsHostedZoneName :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsHostedZoneName = lens _route53RecordSetGroupRecordSetHostedZoneName (\s a -> s { _route53RecordSetGroupRecordSetHostedZoneName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-multivalueanswer
rrsgrsMultiValueAnswer :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Bool))
rrsgrsMultiValueAnswer = lens _route53RecordSetGroupRecordSetMultiValueAnswer (\s a -> s { _route53RecordSetGroupRecordSetMultiValueAnswer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-name
rrsgrsName :: Lens' Route53RecordSetGroupRecordSet (Val Text)
rrsgrsName = lens _route53RecordSetGroupRecordSetName (\s a -> s { _route53RecordSetGroupRecordSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-region
rrsgrsRegion :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsRegion = lens _route53RecordSetGroupRecordSetRegion (\s a -> s { _route53RecordSetGroupRecordSetRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-resourcerecords
rrsgrsResourceRecords :: Lens' Route53RecordSetGroupRecordSet (Maybe (ValList Text))
rrsgrsResourceRecords = lens _route53RecordSetGroupRecordSetResourceRecords (\s a -> s { _route53RecordSetGroupRecordSetResourceRecords = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-setidentifier
rrsgrsSetIdentifier :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsSetIdentifier = lens _route53RecordSetGroupRecordSetSetIdentifier (\s a -> s { _route53RecordSetGroupRecordSetSetIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-ttl
rrsgrsTTL :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Text))
rrsgrsTTL = lens _route53RecordSetGroupRecordSetTTL (\s a -> s { _route53RecordSetGroupRecordSetTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-type
rrsgrsType :: Lens' Route53RecordSetGroupRecordSet (Val Text)
rrsgrsType = lens _route53RecordSetGroupRecordSetType (\s a -> s { _route53RecordSetGroupRecordSetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-weight
rrsgrsWeight :: Lens' Route53RecordSetGroupRecordSet (Maybe (Val Integer))
rrsgrsWeight = lens _route53RecordSetGroupRecordSetWeight (\s a -> s { _route53RecordSetGroupRecordSetWeight = a })
