{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html

module Stratosphere.Resources.GameLiftBuild where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.GameLiftBuildS3Location

-- | Full data type definition for GameLiftBuild. See 'gameLiftBuild' for a
-- | more convenient constructor.
data GameLiftBuild =
  GameLiftBuild
  { _gameLiftBuildName :: Maybe (Val Text)
  , _gameLiftBuildStorageLocation :: Maybe GameLiftBuildS3Location
  , _gameLiftBuildVersion :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON GameLiftBuild where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON GameLiftBuild where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

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
