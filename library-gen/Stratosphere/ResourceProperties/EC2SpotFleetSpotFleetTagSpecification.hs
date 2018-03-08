{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html

module Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetTagSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetSpotFleetTagSpecification. See
-- 'ec2SpotFleetSpotFleetTagSpecification' for a more convenient
-- constructor.
data EC2SpotFleetSpotFleetTagSpecification =
  EC2SpotFleetSpotFleetTagSpecification
  { _eC2SpotFleetSpotFleetTagSpecificationResourceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetSpotFleetTagSpecification where
  toJSON EC2SpotFleetSpotFleetTagSpecification{..} =
    object $
    catMaybes
    [ fmap (("ResourceType",) . toJSON) _eC2SpotFleetSpotFleetTagSpecificationResourceType
    ]

instance FromJSON EC2SpotFleetSpotFleetTagSpecification where
  parseJSON (Object obj) =
    EC2SpotFleetSpotFleetTagSpecification <$>
      (obj .:? "ResourceType")
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetSpotFleetTagSpecification' containing
-- required fields as arguments.
ec2SpotFleetSpotFleetTagSpecification
  :: EC2SpotFleetSpotFleetTagSpecification
ec2SpotFleetSpotFleetTagSpecification  =
  EC2SpotFleetSpotFleetTagSpecification
  { _eC2SpotFleetSpotFleetTagSpecificationResourceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html#cfn-ec2-spotfleet-spotfleettagspecification-resourcetype
ecsfsftsResourceType :: Lens' EC2SpotFleetSpotFleetTagSpecification (Maybe (Val Text))
ecsfsftsResourceType = lens _eC2SpotFleetSpotFleetTagSpecificationResourceType (\s a -> s { _eC2SpotFleetSpotFleetTagSpecificationResourceType = a })
