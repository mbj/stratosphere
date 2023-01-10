
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html

module Stratosphere.ResourceProperties.DirectoryServiceMicrosoftADVpcSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for DirectoryServiceMicrosoftADVpcSettings. See
-- 'directoryServiceMicrosoftADVpcSettings' for a more convenient
-- constructor.
data DirectoryServiceMicrosoftADVpcSettings =
  DirectoryServiceMicrosoftADVpcSettings
  { _directoryServiceMicrosoftADVpcSettingsSubnetIds :: ValList Text
  , _directoryServiceMicrosoftADVpcSettingsVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON DirectoryServiceMicrosoftADVpcSettings where
  toJSON DirectoryServiceMicrosoftADVpcSettings{..} =
    object $
    catMaybes
    [ (Just . ("SubnetIds",) . toJSON) _directoryServiceMicrosoftADVpcSettingsSubnetIds
    , (Just . ("VpcId",) . toJSON) _directoryServiceMicrosoftADVpcSettingsVpcId
    ]

-- | Constructor for 'DirectoryServiceMicrosoftADVpcSettings' containing
-- required fields as arguments.
directoryServiceMicrosoftADVpcSettings
  :: ValList Text -- ^ 'dsmadvsSubnetIds'
  -> Val Text -- ^ 'dsmadvsVpcId'
  -> DirectoryServiceMicrosoftADVpcSettings
directoryServiceMicrosoftADVpcSettings subnetIdsarg vpcIdarg =
  DirectoryServiceMicrosoftADVpcSettings
  { _directoryServiceMicrosoftADVpcSettingsSubnetIds = subnetIdsarg
  , _directoryServiceMicrosoftADVpcSettingsVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-subnetids
dsmadvsSubnetIds :: Lens' DirectoryServiceMicrosoftADVpcSettings (ValList Text)
dsmadvsSubnetIds = lens _directoryServiceMicrosoftADVpcSettingsSubnetIds (\s a -> s { _directoryServiceMicrosoftADVpcSettingsSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-vpcid
dsmadvsVpcId :: Lens' DirectoryServiceMicrosoftADVpcSettings (Val Text)
dsmadvsVpcId = lens _directoryServiceMicrosoftADVpcSettingsVpcId (\s a -> s { _directoryServiceMicrosoftADVpcSettingsVpcId = a })
