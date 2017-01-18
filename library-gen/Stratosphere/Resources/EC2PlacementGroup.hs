{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html

module Stratosphere.Resources.EC2PlacementGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2PlacementGroup. See 'ec2PlacementGroup'
-- | for a more convenient constructor.
data EC2PlacementGroup =
  EC2PlacementGroup
  { _eC2PlacementGroupStrategy :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EC2PlacementGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON EC2PlacementGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'EC2PlacementGroup' containing required fields as
-- | arguments.
ec2PlacementGroup
  :: EC2PlacementGroup
ec2PlacementGroup  =
  EC2PlacementGroup
  { _eC2PlacementGroupStrategy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-strategy
ecpgStrategy :: Lens' EC2PlacementGroup (Maybe (Val Text))
ecpgStrategy = lens _eC2PlacementGroupStrategy (\s a -> s { _eC2PlacementGroupStrategy = a })
