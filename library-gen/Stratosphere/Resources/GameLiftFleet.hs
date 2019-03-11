{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html

module Stratosphere.Resources.GameLiftFleet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftFleetIpPermission

-- | Full data type definition for GameLiftFleet. See 'gameLiftFleet' for a
-- more convenient constructor.
data GameLiftFleet =
  GameLiftFleet
  { _gameLiftFleetBuildId :: Val Text
  , _gameLiftFleetDescription :: Maybe (Val Text)
  , _gameLiftFleetDesiredEC2Instances :: Val Integer
  , _gameLiftFleetEC2InboundPermissions :: Maybe [GameLiftFleetIpPermission]
  , _gameLiftFleetEC2InstanceType :: Val Text
  , _gameLiftFleetLogPaths :: Maybe (ValList Text)
  , _gameLiftFleetMaxSize :: Maybe (Val Integer)
  , _gameLiftFleetMinSize :: Maybe (Val Integer)
  , _gameLiftFleetName :: Val Text
  , _gameLiftFleetServerLaunchParameters :: Maybe (Val Text)
  , _gameLiftFleetServerLaunchPath :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftFleet where
  toResourceProperties GameLiftFleet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::Fleet"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("BuildId",) . toJSON) _gameLiftFleetBuildId
        , fmap (("Description",) . toJSON) _gameLiftFleetDescription
        , (Just . ("DesiredEC2Instances",) . toJSON . fmap Integer') _gameLiftFleetDesiredEC2Instances
        , fmap (("EC2InboundPermissions",) . toJSON) _gameLiftFleetEC2InboundPermissions
        , (Just . ("EC2InstanceType",) . toJSON) _gameLiftFleetEC2InstanceType
        , fmap (("LogPaths",) . toJSON) _gameLiftFleetLogPaths
        , fmap (("MaxSize",) . toJSON . fmap Integer') _gameLiftFleetMaxSize
        , fmap (("MinSize",) . toJSON . fmap Integer') _gameLiftFleetMinSize
        , (Just . ("Name",) . toJSON) _gameLiftFleetName
        , fmap (("ServerLaunchParameters",) . toJSON) _gameLiftFleetServerLaunchParameters
        , (Just . ("ServerLaunchPath",) . toJSON) _gameLiftFleetServerLaunchPath
        ]
    }

-- | Constructor for 'GameLiftFleet' containing required fields as arguments.
gameLiftFleet
  :: Val Text -- ^ 'glfBuildId'
  -> Val Integer -- ^ 'glfDesiredEC2Instances'
  -> Val Text -- ^ 'glfEC2InstanceType'
  -> Val Text -- ^ 'glfName'
  -> Val Text -- ^ 'glfServerLaunchPath'
  -> GameLiftFleet
gameLiftFleet buildIdarg desiredEC2Instancesarg eC2InstanceTypearg namearg serverLaunchPatharg =
  GameLiftFleet
  { _gameLiftFleetBuildId = buildIdarg
  , _gameLiftFleetDescription = Nothing
  , _gameLiftFleetDesiredEC2Instances = desiredEC2Instancesarg
  , _gameLiftFleetEC2InboundPermissions = Nothing
  , _gameLiftFleetEC2InstanceType = eC2InstanceTypearg
  , _gameLiftFleetLogPaths = Nothing
  , _gameLiftFleetMaxSize = Nothing
  , _gameLiftFleetMinSize = Nothing
  , _gameLiftFleetName = namearg
  , _gameLiftFleetServerLaunchParameters = Nothing
  , _gameLiftFleetServerLaunchPath = serverLaunchPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-buildid
glfBuildId :: Lens' GameLiftFleet (Val Text)
glfBuildId = lens _gameLiftFleetBuildId (\s a -> s { _gameLiftFleetBuildId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-description
glfDescription :: Lens' GameLiftFleet (Maybe (Val Text))
glfDescription = lens _gameLiftFleetDescription (\s a -> s { _gameLiftFleetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-desiredec2instances
glfDesiredEC2Instances :: Lens' GameLiftFleet (Val Integer)
glfDesiredEC2Instances = lens _gameLiftFleetDesiredEC2Instances (\s a -> s { _gameLiftFleetDesiredEC2Instances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2inboundpermissions
glfEC2InboundPermissions :: Lens' GameLiftFleet (Maybe [GameLiftFleetIpPermission])
glfEC2InboundPermissions = lens _gameLiftFleetEC2InboundPermissions (\s a -> s { _gameLiftFleetEC2InboundPermissions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2instancetype
glfEC2InstanceType :: Lens' GameLiftFleet (Val Text)
glfEC2InstanceType = lens _gameLiftFleetEC2InstanceType (\s a -> s { _gameLiftFleetEC2InstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-logpaths
glfLogPaths :: Lens' GameLiftFleet (Maybe (ValList Text))
glfLogPaths = lens _gameLiftFleetLogPaths (\s a -> s { _gameLiftFleetLogPaths = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-maxsize
glfMaxSize :: Lens' GameLiftFleet (Maybe (Val Integer))
glfMaxSize = lens _gameLiftFleetMaxSize (\s a -> s { _gameLiftFleetMaxSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-minsize
glfMinSize :: Lens' GameLiftFleet (Maybe (Val Integer))
glfMinSize = lens _gameLiftFleetMinSize (\s a -> s { _gameLiftFleetMinSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-name
glfName :: Lens' GameLiftFleet (Val Text)
glfName = lens _gameLiftFleetName (\s a -> s { _gameLiftFleetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchparameters
glfServerLaunchParameters :: Lens' GameLiftFleet (Maybe (Val Text))
glfServerLaunchParameters = lens _gameLiftFleetServerLaunchParameters (\s a -> s { _gameLiftFleetServerLaunchParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchpath
glfServerLaunchPath :: Lens' GameLiftFleet (Val Text)
glfServerLaunchPath = lens _gameLiftFleetServerLaunchPath (\s a -> s { _gameLiftFleetServerLaunchPath = a })
