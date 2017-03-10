{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html

module Stratosphere.ResourceProperties.EC2SpotFleetIamInstanceProfile where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetIamInstanceProfile. See
-- 'ec2SpotFleetIamInstanceProfile' for a more convenient constructor.
data EC2SpotFleetIamInstanceProfile =
  EC2SpotFleetIamInstanceProfile
  { _eC2SpotFleetIamInstanceProfileArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetIamInstanceProfile where
  toJSON EC2SpotFleetIamInstanceProfile{..} =
    object $
    catMaybes
    [ ("Arn" .=) <$> _eC2SpotFleetIamInstanceProfileArn
    ]

instance FromJSON EC2SpotFleetIamInstanceProfile where
  parseJSON (Object obj) =
    EC2SpotFleetIamInstanceProfile <$>
      obj .:? "Arn"
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetIamInstanceProfile' containing required
-- fields as arguments.
ec2SpotFleetIamInstanceProfile
  :: EC2SpotFleetIamInstanceProfile
ec2SpotFleetIamInstanceProfile  =
  EC2SpotFleetIamInstanceProfile
  { _eC2SpotFleetIamInstanceProfileArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html#cfn-ec2-spotfleet-iaminstanceprofile-arn
ecsfiipArn :: Lens' EC2SpotFleetIamInstanceProfile (Maybe (Val Text))
ecsfiipArn = lens _eC2SpotFleetIamInstanceProfileArn (\s a -> s { _eC2SpotFleetIamInstanceProfileArn = a })
