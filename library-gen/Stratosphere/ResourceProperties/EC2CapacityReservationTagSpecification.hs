
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html

module Stratosphere.ResourceProperties.EC2CapacityReservationTagSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2CapacityReservationTagSpecification. See
-- 'ec2CapacityReservationTagSpecification' for a more convenient
-- constructor.
data EC2CapacityReservationTagSpecification =
  EC2CapacityReservationTagSpecification
  { _eC2CapacityReservationTagSpecificationResourceType :: Maybe (Val Text)
  , _eC2CapacityReservationTagSpecificationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2CapacityReservationTagSpecification where
  toJSON EC2CapacityReservationTagSpecification{..} =
    object $
    catMaybes
    [ fmap (("ResourceType",) . toJSON) _eC2CapacityReservationTagSpecificationResourceType
    , fmap (("Tags",) . toJSON) _eC2CapacityReservationTagSpecificationTags
    ]

-- | Constructor for 'EC2CapacityReservationTagSpecification' containing
-- required fields as arguments.
ec2CapacityReservationTagSpecification
  :: EC2CapacityReservationTagSpecification
ec2CapacityReservationTagSpecification  =
  EC2CapacityReservationTagSpecification
  { _eC2CapacityReservationTagSpecificationResourceType = Nothing
  , _eC2CapacityReservationTagSpecificationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-resourcetype
eccrtsResourceType :: Lens' EC2CapacityReservationTagSpecification (Maybe (Val Text))
eccrtsResourceType = lens _eC2CapacityReservationTagSpecificationResourceType (\s a -> s { _eC2CapacityReservationTagSpecificationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-tags
eccrtsTags :: Lens' EC2CapacityReservationTagSpecification (Maybe [Tag])
eccrtsTags = lens _eC2CapacityReservationTagSpecificationTags (\s a -> s { _eC2CapacityReservationTagSpecificationTags = a })
