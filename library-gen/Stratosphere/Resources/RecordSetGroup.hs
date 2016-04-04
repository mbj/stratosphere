{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Route53::RecordSetGroup resource creates record sets for a
-- hosted zone. For more information about constraints and values for each
-- property, see POST CreateHostedZone for hosted zones and POST
-- ChangeResourceRecordSet for resource record sets.

module Stratosphere.Resources.RecordSetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Resources.RecordSet

data RecordSetGroup =
  RecordSetGroup
  { _recordSetGroupComment :: Maybe (Val Text)
  , _recordSetGroupHostedZoneId :: Maybe (Val Text)
  , _recordSetGroupHostedZoneName :: Maybe (Val Text)
  , _recordSetGroupRecordSets :: [Val RecordSet]
  } deriving (Show, Generic)

instance ToJSON RecordSetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON RecordSetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

recordSetGroup
  :: [Val RecordSet] -- ^ RecordSets
  -> RecordSetGroup
recordSetGroup recordSetsarg =
  RecordSetGroup
  { _recordSetGroupComment = Nothing
  , _recordSetGroupHostedZoneId = Nothing
  , _recordSetGroupHostedZoneName = Nothing
  , _recordSetGroupRecordSets = recordSetsarg
  }

-- | Any comments you want to include about the hosted zone.
rsgComment :: Lens' RecordSetGroup (Maybe (Val Text))
rsgComment = lens _recordSetGroupComment (\s a -> s { _recordSetGroupComment = a })

-- | The ID of the hosted zone.
rsgHostedZoneId :: Lens' RecordSetGroup (Maybe (Val Text))
rsgHostedZoneId = lens _recordSetGroupHostedZoneId (\s a -> s { _recordSetGroupHostedZoneId = a })

-- | The name of the domain for the hosted zone where you want to add the
-- record set. When you create a stack using an AWS::Route53::RecordSet that
-- specifies HostedZoneName, AWS CloudFormation attempts to find a hosted zone
-- whose name matches the HostedZoneName. If AWS CloudFormation cannot find a
-- hosted zone with a matching domain name, or if there is more than one
-- hosted zone with the specified domain name, AWS CloudFormation will not
-- create the stack. If you have multiple hosted zones with the same domain
-- name, you must explicitly specify the hosted zone using HostedZoneId.
rsgHostedZoneName :: Lens' RecordSetGroup (Maybe (Val Text))
rsgHostedZoneName = lens _recordSetGroupHostedZoneName (\s a -> s { _recordSetGroupHostedZoneName = a })

-- | List of resource record sets to add.
rsgRecordSets :: Lens' RecordSetGroup [Val RecordSet]
rsgRecordSets = lens _recordSetGroupRecordSets (\s a -> s { _recordSetGroupRecordSets = a })