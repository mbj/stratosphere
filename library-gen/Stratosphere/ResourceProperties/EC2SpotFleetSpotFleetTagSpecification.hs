
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html

module Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetTagSpecification where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2SpotFleetSpotFleetTagSpecification. See
-- 'ec2SpotFleetSpotFleetTagSpecification' for a more convenient
-- constructor.
data EC2SpotFleetSpotFleetTagSpecification =
  EC2SpotFleetSpotFleetTagSpecification
  { _eC2SpotFleetSpotFleetTagSpecificationResourceType :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetTagSpecificationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetSpotFleetTagSpecification where
  toJSON EC2SpotFleetSpotFleetTagSpecification{..} =
    object $
    catMaybes
    [ fmap (("ResourceType",) . toJSON) _eC2SpotFleetSpotFleetTagSpecificationResourceType
    , fmap (("Tags",) . toJSON) _eC2SpotFleetSpotFleetTagSpecificationTags
    ]

-- | Constructor for 'EC2SpotFleetSpotFleetTagSpecification' containing
-- required fields as arguments.
ec2SpotFleetSpotFleetTagSpecification
  :: EC2SpotFleetSpotFleetTagSpecification
ec2SpotFleetSpotFleetTagSpecification  =
  EC2SpotFleetSpotFleetTagSpecification
  { _eC2SpotFleetSpotFleetTagSpecificationResourceType = Nothing
  , _eC2SpotFleetSpotFleetTagSpecificationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html#cfn-ec2-spotfleet-spotfleettagspecification-resourcetype
ecsfsftsResourceType :: Lens' EC2SpotFleetSpotFleetTagSpecification (Maybe (Val Text))
ecsfsftsResourceType = lens _eC2SpotFleetSpotFleetTagSpecificationResourceType (\s a -> s { _eC2SpotFleetSpotFleetTagSpecificationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html#cfn-ec2-spotfleet-tags
ecsfsftsTags :: Lens' EC2SpotFleetSpotFleetTagSpecification (Maybe [Tag])
ecsfsftsTags = lens _eC2SpotFleetSpotFleetTagSpecificationTags (\s a -> s { _eC2SpotFleetSpotFleetTagSpecificationTags = a })
