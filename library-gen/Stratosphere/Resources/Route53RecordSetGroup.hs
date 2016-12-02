{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html

module Stratosphere.Resources.Route53RecordSetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Route53RecordSetGroupRecordSet

-- | Full data type definition for Route53RecordSetGroup. See
-- | 'route53RecordSetGroup' for a more convenient constructor.
data Route53RecordSetGroup =
  Route53RecordSetGroup
  { _route53RecordSetGroupComment :: Maybe (Val Text)
  , _route53RecordSetGroupHostedZoneId :: Maybe (Val Text)
  , _route53RecordSetGroupHostedZoneName :: Maybe (Val Text)
  , _route53RecordSetGroupRecordSets :: Maybe [Route53RecordSetGroupRecordSet]
  } deriving (Show, Generic)

instance ToJSON Route53RecordSetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON Route53RecordSetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'Route53RecordSetGroup' containing required fields as
-- | arguments.
route53RecordSetGroup
  :: Route53RecordSetGroup
route53RecordSetGroup  =
  Route53RecordSetGroup
  { _route53RecordSetGroupComment = Nothing
  , _route53RecordSetGroupHostedZoneId = Nothing
  , _route53RecordSetGroupHostedZoneName = Nothing
  , _route53RecordSetGroupRecordSets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-comment
rrsgComment :: Lens' Route53RecordSetGroup (Maybe (Val Text))
rrsgComment = lens _route53RecordSetGroupComment (\s a -> s { _route53RecordSetGroupComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-hostedzoneid
rrsgHostedZoneId :: Lens' Route53RecordSetGroup (Maybe (Val Text))
rrsgHostedZoneId = lens _route53RecordSetGroupHostedZoneId (\s a -> s { _route53RecordSetGroupHostedZoneId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-hostedzonename
rrsgHostedZoneName :: Lens' Route53RecordSetGroup (Maybe (Val Text))
rrsgHostedZoneName = lens _route53RecordSetGroupHostedZoneName (\s a -> s { _route53RecordSetGroupHostedZoneName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-recordsets
rrsgRecordSets :: Lens' Route53RecordSetGroup (Maybe [Route53RecordSetGroupRecordSet])
rrsgRecordSets = lens _route53RecordSetGroupRecordSets (\s a -> s { _route53RecordSetGroupRecordSets = a })
