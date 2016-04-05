{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Route53::RecordSet type can be used as a standalone resource or
-- as an embedded property in the AWS::Route53::RecordSetGroup type. Note that
-- some AWS::Route53::RecordSet properties are valid only when used within
-- AWS::Route53::RecordSetGroup. For more information about constraints and
-- values for each property, see POST CreateHostedZone for hosted zones and
-- POST ChangeResourceRecordSet for resource record sets.

module Stratosphere.Resources.RecordSet where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.AliasTarget
import Stratosphere.ResourceProperties.RecordSetGeoLocation

data RecordSet =
  RecordSet
  { _recordSetAliasTarget :: Maybe AliasTarget
  , _recordSetComment :: Maybe (Val Text)
  , _recordSetFailover :: Maybe (Val Text)
  , _recordSetGeoLocation :: Maybe [RecordSetGeoLocation]
  , _recordSetHealthCheckId :: Maybe (Val Text)
  , _recordSetHostedZoneId :: Maybe (Val Text)
  , _recordSetHostedZoneName :: Maybe (Val Text)
  , _recordSetName :: Val Text
  , _recordSetRegion :: Maybe (Val Text)
  , _recordSetResourceRecords :: Maybe [Val Text]
  , _recordSetSetIdentifier :: Maybe (Val Text)
  , _recordSetTTL :: Maybe (Val Text)
  , _recordSetType :: Val Text
  , _recordSetWeight :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON RecordSet where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON RecordSet where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

recordSet
  :: Val Text -- ^ Name
  -> Val Text -- ^ Type
  -> RecordSet
recordSet namearg typearg =
  RecordSet
  { _recordSetAliasTarget = Nothing
  , _recordSetComment = Nothing
  , _recordSetFailover = Nothing
  , _recordSetGeoLocation = Nothing
  , _recordSetHealthCheckId = Nothing
  , _recordSetHostedZoneId = Nothing
  , _recordSetHostedZoneName = Nothing
  , _recordSetName = namearg
  , _recordSetRegion = Nothing
  , _recordSetResourceRecords = Nothing
  , _recordSetSetIdentifier = Nothing
  , _recordSetTTL = Nothing
  , _recordSetType = typearg
  , _recordSetWeight = Nothing
  }

-- | Alias resource record sets only: Information about the domain to which
-- you are redirecting traffic. If you specify this property, do not specify
-- the TTL property. The alias uses a TTL value from the alias target record.
-- For more information about alias resource record sets, see Creating Alias
-- Resource Record Sets in the Amazon Route 53 Developer Guide and POST
-- ChangeResourceRecordSets in the Amazon Route 53 API reference.
rsAliasTarget :: Lens' RecordSet (Maybe AliasTarget)
rsAliasTarget = lens _recordSetAliasTarget (\s a -> s { _recordSetAliasTarget = a })

-- | Any comments that you want to include about the hosted zone. Important If
-- the record set is part of a record set group, this property isn't valid.
-- Don't specify this property.
rsComment :: Lens' RecordSet (Maybe (Val Text))
rsComment = lens _recordSetComment (\s a -> s { _recordSetComment = a })

-- | Designates the record set as a PRIMARY or SECONDARY failover record set.
-- When you have more than one resource performing the same function, you can
-- configure Amazon Route 53 to check the health of your resources and use
-- only health resources to respond to DNS queries. You cannot create
-- nonfailover resource record sets that have the same Name and Type property
-- values as failover resource record sets. For more information, see the
-- Failover element in the Amazon Route 53 API Reference. If you specify this
-- property, you must specify the SetIdentifier property.
rsFailover :: Lens' RecordSet (Maybe (Val Text))
rsFailover = lens _recordSetFailover (\s a -> s { _recordSetFailover = a })

-- | Describes how Amazon Route 53 responds to DNS queries based on the
-- geographic origin of the query.
rsGeoLocation :: Lens' RecordSet (Maybe [RecordSetGeoLocation])
rsGeoLocation = lens _recordSetGeoLocation (\s a -> s { _recordSetGeoLocation = a })

-- | The health check ID that you want to apply to this record set. Amazon
-- Route 53 returns this resource record set in response to a DNS query only
-- while record set is healthy.
rsHealthCheckId :: Lens' RecordSet (Maybe (Val Text))
rsHealthCheckId = lens _recordSetHealthCheckId (\s a -> s { _recordSetHealthCheckId = a })

-- | The ID of the hosted zone.
rsHostedZoneId :: Lens' RecordSet (Maybe (Val Text))
rsHostedZoneId = lens _recordSetHostedZoneId (\s a -> s { _recordSetHostedZoneId = a })

-- | The name of the domain for the hosted zone where you want to add the
-- record set. When you create a stack using an AWS::Route53::RecordSet that
-- specifies HostedZoneName, AWS CloudFormation attempts to find a hosted zone
-- whose name matches the HostedZoneName. If AWS CloudFormation cannot find a
-- hosted zone with a matching domain name, or if there is more than one
-- hosted zone with the specified domain name, AWS CloudFormation will not
-- create the stack. If you have multiple hosted zones with the same domain
-- name, you must explicitly specify the hosted zone using HostedZoneId.
rsHostedZoneName :: Lens' RecordSet (Maybe (Val Text))
rsHostedZoneName = lens _recordSetHostedZoneName (\s a -> s { _recordSetHostedZoneName = a })

-- | The name of the domain. You must specify a fully qualified domain name
-- that ends with a period as the last label indication. If you omit the final
-- period, AWS CloudFormation adds it.
rsName :: Lens' RecordSet (Val Text)
rsName = lens _recordSetName (\s a -> s { _recordSetName = a })

-- | Latency resource record sets only: The Amazon EC2 region where the
-- resource that is specified in this resource record set resides. The
-- resource typically is an AWS resource, for example, Amazon EC2 instance or
-- an Elastic Load Balancing load balancer, and is referred to by an IP
-- address or a DNS domain name, depending on the record type. When Amazon
-- Route 53 receives a DNS query for a domain name and type for which you have
-- created latency resource record sets, Amazon Route 53 selects the latency
-- resource record set that has the lowest latency between the end user and
-- the associated Amazon EC2 region. Amazon Route 53 then returns the value
-- that is associated with the selected resource record set. The following
-- restrictions must be followed: You can only specify one resource record per
-- latency resource record set. You can only create one latency resource
-- record set for each Amazon EC2 region. You are not required to create
-- latency resource record sets for all Amazon EC2 regions. Amazon Route 53
-- will choose the region with the best latency from among the regions for
-- which you create latency resource record sets. You cannot create both
-- weighted and latency resource record sets that have the same values for the
-- Name and Type elements. To see a list of regions by service, see Regions
-- and Endpoints in the AWS General Reference.
rsRegion :: Lens' RecordSet (Maybe (Val Text))
rsRegion = lens _recordSetRegion (\s a -> s { _recordSetRegion = a })

-- | List of resource records to add. Each record should be in the format
-- appropriate for the record type specified by the Type property. For
-- information about different record types and their record formats, see
-- Appendix: Domain Name Format in the Amazon Route 53 Developer Guide.
rsResourceRecords :: Lens' RecordSet (Maybe [Val Text])
rsResourceRecords = lens _recordSetResourceRecords (\s a -> s { _recordSetResourceRecords = a })

-- | A unique identifier that differentiates among multiple resource record
-- sets that have the same combination of DNS name and type.
rsSetIdentifier :: Lens' RecordSet (Maybe (Val Text))
rsSetIdentifier = lens _recordSetSetIdentifier (\s a -> s { _recordSetSetIdentifier = a })

-- | The resource record cache time to live (TTL), in seconds. If you specify
-- this property, do not specify the AliasTarget property. For alias target
-- records, the alias uses a TTL value from the target. If you specify this
-- property, you must specify the ResourceRecords property.
rsTTL :: Lens' RecordSet (Maybe (Val Text))
rsTTL = lens _recordSetTTL (\s a -> s { _recordSetTTL = a })

-- | The type of records to add.
rsType :: Lens' RecordSet (Val Text)
rsType = lens _recordSetType (\s a -> s { _recordSetType = a })

-- | Weighted resource record sets only: Among resource record sets that have
-- the same combination of DNS name and type, a value that determines what
-- portion of traffic for the current resource record set is routed to the
-- associated location. For more information about weighted resource record
-- sets, see Setting Up Weighted Resource Record Sets in the Amazon Route 53
-- Developer Guide.
rsWeight :: Lens' RecordSet (Maybe (Val Integer'))
rsWeight = lens _recordSetWeight (\s a -> s { _recordSetWeight = a })