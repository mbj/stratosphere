{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html

module Stratosphere.ResourceProperties.DirectoryServiceSimpleADVpcSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for DirectoryServiceSimpleADVpcSettings. See
-- 'directoryServiceSimpleADVpcSettings' for a more convenient constructor.
data DirectoryServiceSimpleADVpcSettings =
  DirectoryServiceSimpleADVpcSettings
  { _directoryServiceSimpleADVpcSettingsSubnetIds :: ValList Text
  , _directoryServiceSimpleADVpcSettingsVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON DirectoryServiceSimpleADVpcSettings where
  toJSON DirectoryServiceSimpleADVpcSettings{..} =
    object $
    catMaybes
    [ (Just . ("SubnetIds",) . toJSON) _directoryServiceSimpleADVpcSettingsSubnetIds
    , (Just . ("VpcId",) . toJSON) _directoryServiceSimpleADVpcSettingsVpcId
    ]

-- | Constructor for 'DirectoryServiceSimpleADVpcSettings' containing required
-- fields as arguments.
directoryServiceSimpleADVpcSettings
  :: ValList Text -- ^ 'dssadvsSubnetIds'
  -> Val Text -- ^ 'dssadvsVpcId'
  -> DirectoryServiceSimpleADVpcSettings
directoryServiceSimpleADVpcSettings subnetIdsarg vpcIdarg =
  DirectoryServiceSimpleADVpcSettings
  { _directoryServiceSimpleADVpcSettingsSubnetIds = subnetIdsarg
  , _directoryServiceSimpleADVpcSettingsVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-subnetids
dssadvsSubnetIds :: Lens' DirectoryServiceSimpleADVpcSettings (ValList Text)
dssadvsSubnetIds = lens _directoryServiceSimpleADVpcSettingsSubnetIds (\s a -> s { _directoryServiceSimpleADVpcSettingsSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-vpcid
dssadvsVpcId :: Lens' DirectoryServiceSimpleADVpcSettings (Val Text)
dssadvsVpcId = lens _directoryServiceSimpleADVpcSettingsVpcId (\s a -> s { _directoryServiceSimpleADVpcSettingsVpcId = a })
