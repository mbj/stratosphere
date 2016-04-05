{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a new route table within a VPC. After you create a new route
-- table, you can add routes and associate the table with a subnet.

module Stratosphere.Resources.RouteTable where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

data RouteTable =
  RouteTable
  { _routeTableVpcId :: Val Text
  , _routeTableTags :: Maybe [ResourceTag]
  } deriving (Show, Generic)

instance ToJSON RouteTable where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON RouteTable where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

routeTable
  :: Val Text -- ^ VpcId
  -> RouteTable
routeTable vpcIdarg =
  RouteTable
  { _routeTableVpcId = vpcIdarg
  , _routeTableTags = Nothing
  }

-- | The ID of the VPC where the route table will be created. Example:
-- vpc-11ad4878
rtVpcId :: Lens' RouteTable (Val Text)
rtVpcId = lens _routeTableVpcId (\s a -> s { _routeTableVpcId = a })

-- | An arbitrary set of tags (key–value pairs) for this route table.
rtTags :: Lens' RouteTable (Maybe [ResourceTag])
rtTags = lens _routeTableTags (\s a -> s { _routeTableTags = a })