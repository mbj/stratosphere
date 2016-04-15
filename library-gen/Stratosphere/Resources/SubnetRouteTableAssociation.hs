{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Associates a subnet with a route table.

module Stratosphere.Resources.SubnetRouteTableAssociation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SubnetRouteTableAssociation. See
-- 'subnetRouteTableAssociation' for a more convenient constructor.
data SubnetRouteTableAssociation =
  SubnetRouteTableAssociation
  { _subnetRouteTableAssociationRouteTableId :: Val Text
  , _subnetRouteTableAssociationSubnetId :: Val Text
  } deriving (Show, Generic)

instance ToJSON SubnetRouteTableAssociation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON SubnetRouteTableAssociation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'SubnetRouteTableAssociation' containing required fields
-- as arguments.
subnetRouteTableAssociation
  :: Val Text -- ^ 'srtaRouteTableId'
  -> Val Text -- ^ 'srtaSubnetId'
  -> SubnetRouteTableAssociation
subnetRouteTableAssociation routeTableIdarg subnetIdarg =
  SubnetRouteTableAssociation
  { _subnetRouteTableAssociationRouteTableId = routeTableIdarg
  , _subnetRouteTableAssociationSubnetId = subnetIdarg
  }

-- | The ID of the route table. This is commonly written as a reference to a
-- route table declared elsewhere in the template. For example:
srtaRouteTableId :: Lens' SubnetRouteTableAssociation (Val Text)
srtaRouteTableId = lens _subnetRouteTableAssociationRouteTableId (\s a -> s { _subnetRouteTableAssociationRouteTableId = a })

-- | The ID of the subnet. This is commonly written as a reference to a subnet
-- declared elsewhere in the template. For example:
srtaSubnetId :: Lens' SubnetRouteTableAssociation (Val Text)
srtaSubnetId = lens _subnetRouteTableAssociationSubnetId (\s a -> s { _subnetRouteTableAssociationSubnetId = a })