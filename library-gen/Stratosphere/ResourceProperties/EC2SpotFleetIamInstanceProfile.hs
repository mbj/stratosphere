{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html

module Stratosphere.ResourceProperties.EC2SpotFleetIamInstanceProfile where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetIamInstanceProfile. See
-- | 'ec2SpotFleetIamInstanceProfile' for a more convenient constructor.
data EC2SpotFleetIamInstanceProfile =
  EC2SpotFleetIamInstanceProfile
  { _eC2SpotFleetIamInstanceProfileArn :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EC2SpotFleetIamInstanceProfile where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON EC2SpotFleetIamInstanceProfile where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetIamInstanceProfile' containing required
-- | fields as arguments.
ec2SpotFleetIamInstanceProfile
  :: EC2SpotFleetIamInstanceProfile
ec2SpotFleetIamInstanceProfile  =
  EC2SpotFleetIamInstanceProfile
  { _eC2SpotFleetIamInstanceProfileArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html#cfn-ec2-spotfleet-iaminstanceprofile-arn
ecsfiipArn :: Lens' EC2SpotFleetIamInstanceProfile (Maybe (Val Text))
ecsfiipArn = lens _eC2SpotFleetIamInstanceProfileArn (\s a -> s { _eC2SpotFleetIamInstanceProfileArn = a })
