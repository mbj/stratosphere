{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html

module Stratosphere.Resources.GameLiftFleet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftFleetCertificateConfiguration
import Stratosphere.ResourceProperties.GameLiftFleetIpPermission
import Stratosphere.ResourceProperties.GameLiftFleetResourceCreationLimitPolicy
import Stratosphere.ResourceProperties.GameLiftFleetRuntimeConfiguration

-- | Full data type definition for GameLiftFleet. See 'gameLiftFleet' for a
-- more convenient constructor.
data GameLiftFleet =
  GameLiftFleet
  { _gameLiftFleetBuildId :: Maybe (Val Text)
  , _gameLiftFleetCertificateConfiguration :: Maybe GameLiftFleetCertificateConfiguration
  , _gameLiftFleetDescription :: Maybe (Val Text)
  , _gameLiftFleetDesiredEC2Instances :: Maybe (Val Integer)
  , _gameLiftFleetEC2InboundPermissions :: Maybe [GameLiftFleetIpPermission]
  , _gameLiftFleetEC2InstanceType :: Val Text
  , _gameLiftFleetFleetType :: Maybe (Val Text)
  , _gameLiftFleetInstanceRoleARN :: Maybe (Val Text)
  , _gameLiftFleetLogPaths :: Maybe (ValList Text)
  , _gameLiftFleetMaxSize :: Maybe (Val Integer)
  , _gameLiftFleetMetricGroups :: Maybe (ValList Text)
  , _gameLiftFleetMinSize :: Maybe (Val Integer)
  , _gameLiftFleetName :: Val Text
  , _gameLiftFleetNewGameSessionProtectionPolicy :: Maybe (Val Text)
  , _gameLiftFleetPeerVpcAwsAccountId :: Maybe (Val Text)
  , _gameLiftFleetPeerVpcId :: Maybe (Val Text)
  , _gameLiftFleetResourceCreationLimitPolicy :: Maybe GameLiftFleetResourceCreationLimitPolicy
  , _gameLiftFleetRuntimeConfiguration :: Maybe GameLiftFleetRuntimeConfiguration
  , _gameLiftFleetScriptId :: Maybe (Val Text)
  , _gameLiftFleetServerLaunchParameters :: Maybe (Val Text)
  , _gameLiftFleetServerLaunchPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftFleet where
  toResourceProperties GameLiftFleet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::Fleet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BuildId",) . toJSON) _gameLiftFleetBuildId
        , fmap (("CertificateConfiguration",) . toJSON) _gameLiftFleetCertificateConfiguration
        , fmap (("Description",) . toJSON) _gameLiftFleetDescription
        , fmap (("DesiredEC2Instances",) . toJSON) _gameLiftFleetDesiredEC2Instances
        , fmap (("EC2InboundPermissions",) . toJSON) _gameLiftFleetEC2InboundPermissions
        , (Just . ("EC2InstanceType",) . toJSON) _gameLiftFleetEC2InstanceType
        , fmap (("FleetType",) . toJSON) _gameLiftFleetFleetType
        , fmap (("InstanceRoleARN",) . toJSON) _gameLiftFleetInstanceRoleARN
        , fmap (("LogPaths",) . toJSON) _gameLiftFleetLogPaths
        , fmap (("MaxSize",) . toJSON) _gameLiftFleetMaxSize
        , fmap (("MetricGroups",) . toJSON) _gameLiftFleetMetricGroups
        , fmap (("MinSize",) . toJSON) _gameLiftFleetMinSize
        , (Just . ("Name",) . toJSON) _gameLiftFleetName
        , fmap (("NewGameSessionProtectionPolicy",) . toJSON) _gameLiftFleetNewGameSessionProtectionPolicy
        , fmap (("PeerVpcAwsAccountId",) . toJSON) _gameLiftFleetPeerVpcAwsAccountId
        , fmap (("PeerVpcId",) . toJSON) _gameLiftFleetPeerVpcId
        , fmap (("ResourceCreationLimitPolicy",) . toJSON) _gameLiftFleetResourceCreationLimitPolicy
        , fmap (("RuntimeConfiguration",) . toJSON) _gameLiftFleetRuntimeConfiguration
        , fmap (("ScriptId",) . toJSON) _gameLiftFleetScriptId
        , fmap (("ServerLaunchParameters",) . toJSON) _gameLiftFleetServerLaunchParameters
        , fmap (("ServerLaunchPath",) . toJSON) _gameLiftFleetServerLaunchPath
        ]
    }

-- | Constructor for 'GameLiftFleet' containing required fields as arguments.
gameLiftFleet
  :: Val Text -- ^ 'glfEC2InstanceType'
  -> Val Text -- ^ 'glfName'
  -> GameLiftFleet
gameLiftFleet eC2InstanceTypearg namearg =
  GameLiftFleet
  { _gameLiftFleetBuildId = Nothing
  , _gameLiftFleetCertificateConfiguration = Nothing
  , _gameLiftFleetDescription = Nothing
  , _gameLiftFleetDesiredEC2Instances = Nothing
  , _gameLiftFleetEC2InboundPermissions = Nothing
  , _gameLiftFleetEC2InstanceType = eC2InstanceTypearg
  , _gameLiftFleetFleetType = Nothing
  , _gameLiftFleetInstanceRoleARN = Nothing
  , _gameLiftFleetLogPaths = Nothing
  , _gameLiftFleetMaxSize = Nothing
  , _gameLiftFleetMetricGroups = Nothing
  , _gameLiftFleetMinSize = Nothing
  , _gameLiftFleetName = namearg
  , _gameLiftFleetNewGameSessionProtectionPolicy = Nothing
  , _gameLiftFleetPeerVpcAwsAccountId = Nothing
  , _gameLiftFleetPeerVpcId = Nothing
  , _gameLiftFleetResourceCreationLimitPolicy = Nothing
  , _gameLiftFleetRuntimeConfiguration = Nothing
  , _gameLiftFleetScriptId = Nothing
  , _gameLiftFleetServerLaunchParameters = Nothing
  , _gameLiftFleetServerLaunchPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-buildid
glfBuildId :: Lens' GameLiftFleet (Maybe (Val Text))
glfBuildId = lens _gameLiftFleetBuildId (\s a -> s { _gameLiftFleetBuildId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-certificateconfiguration
glfCertificateConfiguration :: Lens' GameLiftFleet (Maybe GameLiftFleetCertificateConfiguration)
glfCertificateConfiguration = lens _gameLiftFleetCertificateConfiguration (\s a -> s { _gameLiftFleetCertificateConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-description
glfDescription :: Lens' GameLiftFleet (Maybe (Val Text))
glfDescription = lens _gameLiftFleetDescription (\s a -> s { _gameLiftFleetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-desiredec2instances
glfDesiredEC2Instances :: Lens' GameLiftFleet (Maybe (Val Integer))
glfDesiredEC2Instances = lens _gameLiftFleetDesiredEC2Instances (\s a -> s { _gameLiftFleetDesiredEC2Instances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2inboundpermissions
glfEC2InboundPermissions :: Lens' GameLiftFleet (Maybe [GameLiftFleetIpPermission])
glfEC2InboundPermissions = lens _gameLiftFleetEC2InboundPermissions (\s a -> s { _gameLiftFleetEC2InboundPermissions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2instancetype
glfEC2InstanceType :: Lens' GameLiftFleet (Val Text)
glfEC2InstanceType = lens _gameLiftFleetEC2InstanceType (\s a -> s { _gameLiftFleetEC2InstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-fleettype
glfFleetType :: Lens' GameLiftFleet (Maybe (Val Text))
glfFleetType = lens _gameLiftFleetFleetType (\s a -> s { _gameLiftFleetFleetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-instancerolearn
glfInstanceRoleARN :: Lens' GameLiftFleet (Maybe (Val Text))
glfInstanceRoleARN = lens _gameLiftFleetInstanceRoleARN (\s a -> s { _gameLiftFleetInstanceRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-logpaths
glfLogPaths :: Lens' GameLiftFleet (Maybe (ValList Text))
glfLogPaths = lens _gameLiftFleetLogPaths (\s a -> s { _gameLiftFleetLogPaths = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-maxsize
glfMaxSize :: Lens' GameLiftFleet (Maybe (Val Integer))
glfMaxSize = lens _gameLiftFleetMaxSize (\s a -> s { _gameLiftFleetMaxSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-metricgroups
glfMetricGroups :: Lens' GameLiftFleet (Maybe (ValList Text))
glfMetricGroups = lens _gameLiftFleetMetricGroups (\s a -> s { _gameLiftFleetMetricGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-minsize
glfMinSize :: Lens' GameLiftFleet (Maybe (Val Integer))
glfMinSize = lens _gameLiftFleetMinSize (\s a -> s { _gameLiftFleetMinSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-name
glfName :: Lens' GameLiftFleet (Val Text)
glfName = lens _gameLiftFleetName (\s a -> s { _gameLiftFleetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-newgamesessionprotectionpolicy
glfNewGameSessionProtectionPolicy :: Lens' GameLiftFleet (Maybe (Val Text))
glfNewGameSessionProtectionPolicy = lens _gameLiftFleetNewGameSessionProtectionPolicy (\s a -> s { _gameLiftFleetNewGameSessionProtectionPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-peervpcawsaccountid
glfPeerVpcAwsAccountId :: Lens' GameLiftFleet (Maybe (Val Text))
glfPeerVpcAwsAccountId = lens _gameLiftFleetPeerVpcAwsAccountId (\s a -> s { _gameLiftFleetPeerVpcAwsAccountId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-peervpcid
glfPeerVpcId :: Lens' GameLiftFleet (Maybe (Val Text))
glfPeerVpcId = lens _gameLiftFleetPeerVpcId (\s a -> s { _gameLiftFleetPeerVpcId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-resourcecreationlimitpolicy
glfResourceCreationLimitPolicy :: Lens' GameLiftFleet (Maybe GameLiftFleetResourceCreationLimitPolicy)
glfResourceCreationLimitPolicy = lens _gameLiftFleetResourceCreationLimitPolicy (\s a -> s { _gameLiftFleetResourceCreationLimitPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-runtimeconfiguration
glfRuntimeConfiguration :: Lens' GameLiftFleet (Maybe GameLiftFleetRuntimeConfiguration)
glfRuntimeConfiguration = lens _gameLiftFleetRuntimeConfiguration (\s a -> s { _gameLiftFleetRuntimeConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-scriptid
glfScriptId :: Lens' GameLiftFleet (Maybe (Val Text))
glfScriptId = lens _gameLiftFleetScriptId (\s a -> s { _gameLiftFleetScriptId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchparameters
glfServerLaunchParameters :: Lens' GameLiftFleet (Maybe (Val Text))
glfServerLaunchParameters = lens _gameLiftFleetServerLaunchParameters (\s a -> s { _gameLiftFleetServerLaunchParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchpath
glfServerLaunchPath :: Lens' GameLiftFleet (Maybe (Val Text))
glfServerLaunchPath = lens _gameLiftFleetServerLaunchPath (\s a -> s { _gameLiftFleetServerLaunchPath = a })
