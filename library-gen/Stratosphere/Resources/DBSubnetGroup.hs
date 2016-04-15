{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::RDS::DBSubnetGroup type creates an RDS database subnet group.
-- Subnet groups must contain at least two subnet in two different
-- Availability Zones in the same region.

module Stratosphere.Resources.DBSubnetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for DBSubnetGroup. See 'dbSubnetGroup' for a
-- more convenient constructor.
data DBSubnetGroup =
  DBSubnetGroup
  { _dBSubnetGroupDBSubnetGroupDescription :: Val Text
  , _dBSubnetGroupSubnetIds :: [Val Text]
  , _dBSubnetGroupTags :: Maybe [ResourceTag]
  } deriving (Show, Generic)

instance ToJSON DBSubnetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON DBSubnetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'DBSubnetGroup' containing required fields as arguments.
dbSubnetGroup
  :: Val Text -- ^ 'dbsgDBSubnetGroupDescription'
  -> [Val Text] -- ^ 'dbsgSubnetIds'
  -> DBSubnetGroup
dbSubnetGroup dBSubnetGroupDescriptionarg subnetIdsarg =
  DBSubnetGroup
  { _dBSubnetGroupDBSubnetGroupDescription = dBSubnetGroupDescriptionarg
  , _dBSubnetGroupSubnetIds = subnetIdsarg
  , _dBSubnetGroupTags = Nothing
  }

-- | The description for the DB Subnet Group.
dbsgDBSubnetGroupDescription :: Lens' DBSubnetGroup (Val Text)
dbsgDBSubnetGroupDescription = lens _dBSubnetGroupDBSubnetGroupDescription (\s a -> s { _dBSubnetGroupDBSubnetGroupDescription = a })

-- | The EC2 Subnet IDs for the DB Subnet Group.
dbsgSubnetIds :: Lens' DBSubnetGroup [Val Text]
dbsgSubnetIds = lens _dBSubnetGroupSubnetIds (\s a -> s { _dBSubnetGroupSubnetIds = a })

-- | The tags that you want to attach to the RDS database subnet group.
dbsgTags :: Lens' DBSubnetGroup (Maybe [ResourceTag])
dbsgTags = lens _dBSubnetGroupTags (\s a -> s { _dBSubnetGroupTags = a })