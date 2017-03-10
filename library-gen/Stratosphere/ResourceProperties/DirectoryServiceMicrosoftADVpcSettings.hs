{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html

module Stratosphere.ResourceProperties.DirectoryServiceMicrosoftADVpcSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for DirectoryServiceMicrosoftADVpcSettings. See
-- 'directoryServiceMicrosoftADVpcSettings' for a more convenient
-- constructor.
data DirectoryServiceMicrosoftADVpcSettings =
  DirectoryServiceMicrosoftADVpcSettings
  { _directoryServiceMicrosoftADVpcSettingsSubnetIds :: [Val Text]
  , _directoryServiceMicrosoftADVpcSettingsVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON DirectoryServiceMicrosoftADVpcSettings where
  toJSON DirectoryServiceMicrosoftADVpcSettings{..} =
    object $
    catMaybes
    [ Just ("SubnetIds" .= _directoryServiceMicrosoftADVpcSettingsSubnetIds)
    , Just ("VpcId" .= _directoryServiceMicrosoftADVpcSettingsVpcId)
    ]

instance FromJSON DirectoryServiceMicrosoftADVpcSettings where
  parseJSON (Object obj) =
    DirectoryServiceMicrosoftADVpcSettings <$>
      obj .: "SubnetIds" <*>
      obj .: "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'DirectoryServiceMicrosoftADVpcSettings' containing
-- required fields as arguments.
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
