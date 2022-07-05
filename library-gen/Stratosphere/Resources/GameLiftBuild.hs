{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html

module Stratosphere.Resources.GameLiftBuild where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftBuildS3Location

-- | Full data type definition for GameLiftBuild. See 'gameLiftBuild' for a
-- more convenient constructor.
data GameLiftBuild =
  GameLiftBuild
  { _gameLiftBuildName :: Maybe (Val Text)
  , _gameLiftBuildOperatingSystem :: Maybe (Val Text)
  , _gameLiftBuildStorageLocation :: Maybe GameLiftBuildS3Location
  , _gameLiftBuildVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftBuild where
  toResourceProperties GameLiftBuild{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::Build"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Name",) . toJSON) _gameLiftBuildName
        , fmap (("OperatingSystem",) . toJSON) _gameLiftBuildOperatingSystem
        , fmap (("StorageLocation",) . toJSON) _gameLiftBuildStorageLocation
        , fmap (("Version",) . toJSON) _gameLiftBuildVersion
        ]
    }

-- | Constructor for 'GameLiftBuild' containing required fields as arguments.
gameLiftBuild
  :: GameLiftBuild
gameLiftBuild  =
  GameLiftBuild
  { _gameLiftBuildName = Nothing
  , _gameLiftBuildOperatingSystem = Nothing
  , _gameLiftBuildStorageLocation = Nothing
  , _gameLiftBuildVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-name
glbName :: Lens' GameLiftBuild (Maybe (Val Text))
glbName = lens _gameLiftBuildName (\s a -> s { _gameLiftBuildName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-operatingsystem
glbOperatingSystem :: Lens' GameLiftBuild (Maybe (Val Text))
glbOperatingSystem = lens _gameLiftBuildOperatingSystem (\s a -> s { _gameLiftBuildOperatingSystem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-storagelocation
glbStorageLocation :: Lens' GameLiftBuild (Maybe GameLiftBuildS3Location)
glbStorageLocation = lens _gameLiftBuildStorageLocation (\s a -> s { _gameLiftBuildStorageLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-version
glbVersion :: Lens' GameLiftBuild (Maybe (Val Text))
glbVersion = lens _gameLiftBuildVersion (\s a -> s { _gameLiftBuildVersion = a })
