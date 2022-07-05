{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html

module Stratosphere.Resources.EC2PlacementGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2PlacementGroup. See 'ec2PlacementGroup'
-- for a more convenient constructor.
data EC2PlacementGroup =
  EC2PlacementGroup
  { _eC2PlacementGroupStrategy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2PlacementGroup where
  toResourceProperties EC2PlacementGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::PlacementGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Strategy",) . toJSON) _eC2PlacementGroupStrategy
        ]
    }

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
