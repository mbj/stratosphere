{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html

module Stratosphere.ResourceProperties.DirectoryServiceSimpleADVpcSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DirectoryServiceSimpleADVpcSettings. See
-- | 'directoryServiceSimpleADVpcSettings' for a more convenient constructor.
data DirectoryServiceSimpleADVpcSettings =
  DirectoryServiceSimpleADVpcSettings
  { _directoryServiceSimpleADVpcSettingsSubnetIds :: [Val Text]
  , _directoryServiceSimpleADVpcSettingsVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON DirectoryServiceSimpleADVpcSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON DirectoryServiceSimpleADVpcSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

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
