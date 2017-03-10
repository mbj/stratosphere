{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html

module Stratosphere.Resources.EC2PlacementGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2PlacementGroup. See 'ec2PlacementGroup'
-- for a more convenient constructor.
data EC2PlacementGroup =
  EC2PlacementGroup
  { _eC2PlacementGroupStrategy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2PlacementGroup where
  toJSON EC2PlacementGroup{..} =
    object $
    catMaybes
    [ ("Strategy" .=) <$> _eC2PlacementGroupStrategy
    ]

instance FromJSON EC2PlacementGroup where
  parseJSON (Object obj) =
    EC2PlacementGroup <$>
      obj .:? "Strategy"
  parseJSON _ = mempty

-- | Constructor for 'EC2PlacementGroup' containing required fields as
-- arguments.
ec2PlacementGroup
  :: EC2PlacementGroup
ec2PlacementGroup  =
  EC2PlacementGroup
  { _eC2PlacementGroupStrategy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-strategy
ecpgStrategy :: Lens' EC2PlacementGroup (Maybe (Val Text))
ecpgStrategy = lens _eC2PlacementGroupStrategy (\s a -> s { _eC2PlacementGroupStrategy = a })
