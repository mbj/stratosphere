{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html

module Stratosphere.ResourceProperties.EC2EC2FleetTagSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2EC2FleetTagRequest

-- | Full data type definition for EC2EC2FleetTagSpecification. See
-- 'ec2EC2FleetTagSpecification' for a more convenient constructor.
data EC2EC2FleetTagSpecification =
  EC2EC2FleetTagSpecification
  { _eC2EC2FleetTagSpecificationResourceType :: Maybe (Val Text)
  , _eC2EC2FleetTagSpecificationTags :: Maybe [EC2EC2FleetTagRequest]
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetTagSpecification where
  toJSON EC2EC2FleetTagSpecification{..} =
    object $
    catMaybes
    [ fmap (("ResourceType",) . toJSON) _eC2EC2FleetTagSpecificationResourceType
    , fmap (("Tags",) . toJSON) _eC2EC2FleetTagSpecificationTags
    ]

-- | Constructor for 'EC2EC2FleetTagSpecification' containing required fields
-- as arguments.
ec2EC2FleetTagSpecification
  :: EC2EC2FleetTagSpecification
ec2EC2FleetTagSpecification  =
  EC2EC2FleetTagSpecification
  { _eC2EC2FleetTagSpecificationResourceType = Nothing
  , _eC2EC2FleetTagSpecificationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html#cfn-ec2-ec2fleet-tagspecification-resourcetype
ececftsResourceType :: Lens' EC2EC2FleetTagSpecification (Maybe (Val Text))
ececftsResourceType = lens _eC2EC2FleetTagSpecificationResourceType (\s a -> s { _eC2EC2FleetTagSpecificationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html#cfn-ec2-ec2fleet-tagspecification-tags
ececftsTags :: Lens' EC2EC2FleetTagSpecification (Maybe [EC2EC2FleetTagRequest])
ececftsTags = lens _eC2EC2FleetTagSpecificationTags (\s a -> s { _eC2EC2FleetTagSpecificationTags = a })
