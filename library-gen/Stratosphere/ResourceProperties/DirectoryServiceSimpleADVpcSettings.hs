{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html

module Stratosphere.ResourceProperties.DirectoryServiceSimpleADVpcSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for DirectoryServiceSimpleADVpcSettings. See
-- | 'directoryServiceSimpleADVpcSettings' for a more convenient constructor.
data DirectoryServiceSimpleADVpcSettings =
  DirectoryServiceSimpleADVpcSettings
  { _directoryServiceSimpleADVpcSettingsSubnetIds :: [Val Text]
  , _directoryServiceSimpleADVpcSettingsVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON DirectoryServiceSimpleADVpcSettings where
  toJSON DirectoryServiceSimpleADVpcSettings{..} =
    object
    [ "SubnetIds" .= _directoryServiceSimpleADVpcSettingsSubnetIds
    , "VpcId" .= _directoryServiceSimpleADVpcSettingsVpcId
    ]

instance FromJSON DirectoryServiceSimpleADVpcSettings where
  parseJSON (Object obj) =
    DirectoryServiceSimpleADVpcSettings <$>
      obj .: "SubnetIds" <*>
      obj .: "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'DirectoryServiceSimpleADVpcSettings' containing required
-- | fields as arguments.
directoryServiceSimpleADVpcSettings
  :: [Val Text] -- ^ 'dssadvsSubnetIds'
  -> Val Text -- ^ 'dssadvsVpcId'
  -> DirectoryServiceSimpleADVpcSettings
directoryServiceSimpleADVpcSettings subnetIdsarg vpcIdarg =
  DirectoryServiceSimpleADVpcSettings
  { _directoryServiceSimpleADVpcSettingsSubnetIds = subnetIdsarg
  , _directoryServiceSimpleADVpcSettingsVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-subnetids
dssadvsSubnetIds :: Lens' DirectoryServiceSimpleADVpcSettings [Val Text]
dssadvsSubnetIds = lens _directoryServiceSimpleADVpcSettingsSubnetIds (\s a -> s { _directoryServiceSimpleADVpcSettingsSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-vpcid
dssadvsVpcId :: Lens' DirectoryServiceSimpleADVpcSettings (Val Text)
dssadvsVpcId = lens _directoryServiceSimpleADVpcSettingsVpcId (\s a -> s { _directoryServiceSimpleADVpcSettingsVpcId = a })
