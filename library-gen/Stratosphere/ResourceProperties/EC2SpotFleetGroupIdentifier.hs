
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html

module Stratosphere.ResourceProperties.EC2SpotFleetGroupIdentifier where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetGroupIdentifier. See
-- 'ec2SpotFleetGroupIdentifier' for a more convenient constructor.
data EC2SpotFleetGroupIdentifier =
  EC2SpotFleetGroupIdentifier
  { _eC2SpotFleetGroupIdentifierGroupId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetGroupIdentifier where
  toJSON EC2SpotFleetGroupIdentifier{..} =
    object $
    catMaybes
    [ (Just . ("GroupId",) . toJSON) _eC2SpotFleetGroupIdentifierGroupId
    ]

-- | Constructor for 'EC2SpotFleetGroupIdentifier' containing required fields
-- as arguments.
ec2SpotFleetGroupIdentifier
  :: Val Text -- ^ 'ecsfgiGroupId'
  -> EC2SpotFleetGroupIdentifier
ec2SpotFleetGroupIdentifier groupIdarg =
  EC2SpotFleetGroupIdentifier
  { _eC2SpotFleetGroupIdentifierGroupId = groupIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html#cfn-ec2-spotfleet-groupidentifier-groupid
ecsfgiGroupId :: Lens' EC2SpotFleetGroupIdentifier (Val Text)
ecsfgiGroupId = lens _eC2SpotFleetGroupIdentifierGroupId (\s a -> s { _eC2SpotFleetGroupIdentifierGroupId = a })
