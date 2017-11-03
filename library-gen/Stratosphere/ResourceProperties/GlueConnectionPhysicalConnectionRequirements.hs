{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html

module Stratosphere.ResourceProperties.GlueConnectionPhysicalConnectionRequirements where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- GlueConnectionPhysicalConnectionRequirements. See
-- 'glueConnectionPhysicalConnectionRequirements' for a more convenient
-- constructor.
data GlueConnectionPhysicalConnectionRequirements =
  GlueConnectionPhysicalConnectionRequirements
  { _glueConnectionPhysicalConnectionRequirementsAvailabilityZone :: Maybe (Val Text)
  , _glueConnectionPhysicalConnectionRequirementsSecurityGroupIdList :: Maybe (ValList Text)
  , _glueConnectionPhysicalConnectionRequirementsSubnetId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueConnectionPhysicalConnectionRequirements where
  toJSON GlueConnectionPhysicalConnectionRequirements{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZone",) . toJSON) _glueConnectionPhysicalConnectionRequirementsAvailabilityZone
    , fmap (("SecurityGroupIdList",) . toJSON) _glueConnectionPhysicalConnectionRequirementsSecurityGroupIdList
    , fmap (("SubnetId",) . toJSON) _glueConnectionPhysicalConnectionRequirementsSubnetId
    ]

instance FromJSON GlueConnectionPhysicalConnectionRequirements where
  parseJSON (Object obj) =
    GlueConnectionPhysicalConnectionRequirements <$>
      (obj .:? "AvailabilityZone") <*>
      (obj .:? "SecurityGroupIdList") <*>
      (obj .:? "SubnetId")
  parseJSON _ = mempty

-- | Constructor for 'GlueConnectionPhysicalConnectionRequirements' containing
-- required fields as arguments.
glueConnectionPhysicalConnectionRequirements
  :: GlueConnectionPhysicalConnectionRequirements
glueConnectionPhysicalConnectionRequirements  =
  GlueConnectionPhysicalConnectionRequirements
  { _glueConnectionPhysicalConnectionRequirementsAvailabilityZone = Nothing
  , _glueConnectionPhysicalConnectionRequirementsSecurityGroupIdList = Nothing
  , _glueConnectionPhysicalConnectionRequirementsSubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html#cfn-glue-connection-physicalconnectionrequirements-availabilityzone
gcpcrAvailabilityZone :: Lens' GlueConnectionPhysicalConnectionRequirements (Maybe (Val Text))
gcpcrAvailabilityZone = lens _glueConnectionPhysicalConnectionRequirementsAvailabilityZone (\s a -> s { _glueConnectionPhysicalConnectionRequirementsAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html#cfn-glue-connection-physicalconnectionrequirements-securitygroupidlist
gcpcrSecurityGroupIdList :: Lens' GlueConnectionPhysicalConnectionRequirements (Maybe (ValList Text))
gcpcrSecurityGroupIdList = lens _glueConnectionPhysicalConnectionRequirementsSecurityGroupIdList (\s a -> s { _glueConnectionPhysicalConnectionRequirementsSecurityGroupIdList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html#cfn-glue-connection-physicalconnectionrequirements-subnetid
gcpcrSubnetId :: Lens' GlueConnectionPhysicalConnectionRequirements (Maybe (Val Text))
gcpcrSubnetId = lens _glueConnectionPhysicalConnectionRequirementsSubnetId (\s a -> s { _glueConnectionPhysicalConnectionRequirementsSubnetId = a })
