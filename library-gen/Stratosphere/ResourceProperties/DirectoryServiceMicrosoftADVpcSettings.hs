{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html

module Stratosphere.ResourceProperties.DirectoryServiceMicrosoftADVpcSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DirectoryServiceMicrosoftADVpcSettings. See
-- | 'directoryServiceMicrosoftADVpcSettings' for a more convenient
-- | constructor.
data DirectoryServiceMicrosoftADVpcSettings =
  DirectoryServiceMicrosoftADVpcSettings
  { _directoryServiceMicrosoftADVpcSettingsSubnetIds :: [Val Text]
  , _directoryServiceMicrosoftADVpcSettingsVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON DirectoryServiceMicrosoftADVpcSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON DirectoryServiceMicrosoftADVpcSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

-- | Constructor for 'DirectoryServiceMicrosoftADVpcSettings' containing
-- | required fields as arguments.
directoryServiceMicrosoftADVpcSettings
  :: [Val Text] -- ^ 'dsmadvsSubnetIds'
  -> Val Text -- ^ 'dsmadvsVpcId'
  -> DirectoryServiceMicrosoftADVpcSettings
directoryServiceMicrosoftADVpcSettings subnetIdsarg vpcIdarg =
  DirectoryServiceMicrosoftADVpcSettings
  { _directoryServiceMicrosoftADVpcSettingsSubnetIds = subnetIdsarg
  , _directoryServiceMicrosoftADVpcSettingsVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-subnetids
dsmadvsSubnetIds :: Lens' DirectoryServiceMicrosoftADVpcSettings [Val Text]
dsmadvsSubnetIds = lens _directoryServiceMicrosoftADVpcSettingsSubnetIds (\s a -> s { _directoryServiceMicrosoftADVpcSettingsSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-vpcid
dsmadvsVpcId :: Lens' DirectoryServiceMicrosoftADVpcSettings (Val Text)
dsmadvsVpcId = lens _directoryServiceMicrosoftADVpcSettingsVpcId (\s a -> s { _directoryServiceMicrosoftADVpcSettingsVpcId = a })
