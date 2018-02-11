{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html

module Stratosphere.ResourceProperties.EC2SpotFleetIamInstanceProfileSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2SpotFleetIamInstanceProfileSpecification. See
-- 'ec2SpotFleetIamInstanceProfileSpecification' for a more convenient
-- constructor.
data EC2SpotFleetIamInstanceProfileSpecification =
  EC2SpotFleetIamInstanceProfileSpecification
  { _eC2SpotFleetIamInstanceProfileSpecificationArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetIamInstanceProfileSpecification where
  toJSON EC2SpotFleetIamInstanceProfileSpecification{..} =
    object $
    catMaybes
    [ fmap (("Arn",) . toJSON) _eC2SpotFleetIamInstanceProfileSpecificationArn
    ]

instance FromJSON EC2SpotFleetIamInstanceProfileSpecification where
  parseJSON (Object obj) =
    EC2SpotFleetIamInstanceProfileSpecification <$>
      (obj .:? "Arn")
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetIamInstanceProfileSpecification' containing
-- required fields as arguments.
ec2SpotFleetIamInstanceProfileSpecification
  :: EC2SpotFleetIamInstanceProfileSpecification
ec2SpotFleetIamInstanceProfileSpecification  =
  EC2SpotFleetIamInstanceProfileSpecification
  { _eC2SpotFleetIamInstanceProfileSpecificationArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html#cfn-ec2-spotfleet-iaminstanceprofilespecification-arn
ecsfiipsArn :: Lens' EC2SpotFleetIamInstanceProfileSpecification (Maybe (Val Text))
ecsfiipsArn = lens _eC2SpotFleetIamInstanceProfileSpecificationArn (\s a -> s { _eC2SpotFleetIamInstanceProfileSpecificationArn = a })
