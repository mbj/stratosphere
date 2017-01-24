{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html

module Stratosphere.ResourceProperties.EC2SpotFleetSecurityGroups where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetSecurityGroups. See
-- | 'ec2SpotFleetSecurityGroups' for a more convenient constructor.
data EC2SpotFleetSecurityGroups =
  EC2SpotFleetSecurityGroups
  { _eC2SpotFleetSecurityGroupsGroupId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetSecurityGroups where
  toJSON EC2SpotFleetSecurityGroups{..} =
    object
    [ "GroupId" .= _eC2SpotFleetSecurityGroupsGroupId
    ]

instance FromJSON EC2SpotFleetSecurityGroups where
  parseJSON (Object obj) =
    EC2SpotFleetSecurityGroups <$>
      obj .: "GroupId"
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetSecurityGroups' containing required fields
-- | as arguments.
ec2SpotFleetSecurityGroups
  :: EC2SpotFleetSecurityGroups
ec2SpotFleetSecurityGroups  =
  EC2SpotFleetSecurityGroups
  { _eC2SpotFleetSecurityGroupsGroupId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html#cfn-ec2-spotfleet-securitygroups-groupid
ecsfsgGroupId :: Lens' EC2SpotFleetSecurityGroups (Maybe (Val Text))
ecsfsgGroupId = lens _eC2SpotFleetSecurityGroupsGroupId (\s a -> s { _eC2SpotFleetSecurityGroupsGroupId = a })
