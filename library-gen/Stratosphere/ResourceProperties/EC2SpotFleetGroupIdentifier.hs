{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html

module Stratosphere.ResourceProperties.EC2SpotFleetGroupIdentifier where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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

instance FromJSON EC2SpotFleetGroupIdentifier where
  parseJSON (Object obj) =
    EC2SpotFleetGroupIdentifier <$>
      (obj .: "GroupId")
  parseJSON _ = mempty

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
