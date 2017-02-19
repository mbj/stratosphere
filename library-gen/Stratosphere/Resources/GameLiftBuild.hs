{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html

module Stratosphere.Resources.GameLiftBuild where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.GameLiftBuildS3Location

-- | Full data type definition for GameLiftBuild. See 'gameLiftBuild' for a
-- | more convenient constructor.
data GameLiftBuild =
  GameLiftBuild
  { _gameLiftBuildName :: Maybe (Val Text)
  , _gameLiftBuildStorageLocation :: Maybe GameLiftBuildS3Location
  , _gameLiftBuildVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GameLiftBuild where
  toJSON GameLiftBuild{..} =
    object $
    catMaybes
    [ ("Name" .=) <$> _gameLiftBuildName
    , ("StorageLocation" .=) <$> _gameLiftBuildStorageLocation
    , ("Version" .=) <$> _gameLiftBuildVersion
    ]

instance FromJSON GameLiftBuild where
  parseJSON (Object obj) =
    GameLiftBuild <$>
      obj .:? "Name" <*>
      obj .:? "StorageLocation" <*>
      obj .:? "Version"
  parseJSON _ = mempty

-- | Constructor for 'GameLiftBuild' containing required fields as arguments.
gameLiftBuild
  :: GameLiftBuild
gameLiftBuild  =
  GameLiftBuild
  { _gameLiftBuildName = Nothing
  , _gameLiftBuildStorageLocation = Nothing
  , _gameLiftBuildVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-name
glbName :: Lens' GameLiftBuild (Maybe (Val Text))
glbName = lens _gameLiftBuildName (\s a -> s { _gameLiftBuildName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-storagelocation
glbStorageLocation :: Lens' GameLiftBuild (Maybe GameLiftBuildS3Location)
glbStorageLocation = lens _gameLiftBuildStorageLocation (\s a -> s { _gameLiftBuildStorageLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-version
glbVersion :: Lens' GameLiftBuild (Maybe (Val Text))
glbVersion = lens _gameLiftBuildVersion (\s a -> s { _gameLiftBuildVersion = a })
