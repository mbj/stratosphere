{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html

module Stratosphere.Resources.GameLiftScript where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftScriptS3Location

-- | Full data type definition for GameLiftScript. See 'gameLiftScript' for a
-- more convenient constructor.
data GameLiftScript =
  GameLiftScript
  { _gameLiftScriptName :: Maybe (Val Text)
  , _gameLiftScriptStorageLocation :: GameLiftScriptS3Location
  , _gameLiftScriptVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftScript where
  toResourceProperties GameLiftScript{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::Script"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Name",) . toJSON) _gameLiftScriptName
        , (Just . ("StorageLocation",) . toJSON) _gameLiftScriptStorageLocation
        , fmap (("Version",) . toJSON) _gameLiftScriptVersion
        ]
    }

-- | Constructor for 'GameLiftScript' containing required fields as arguments.
gameLiftScript
  :: GameLiftScriptS3Location -- ^ 'glsStorageLocation'
  -> GameLiftScript
gameLiftScript storageLocationarg =
  GameLiftScript
  { _gameLiftScriptName = Nothing
  , _gameLiftScriptStorageLocation = storageLocationarg
  , _gameLiftScriptVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html#cfn-gamelift-script-name
glsName :: Lens' GameLiftScript (Maybe (Val Text))
glsName = lens _gameLiftScriptName (\s a -> s { _gameLiftScriptName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html#cfn-gamelift-script-storagelocation
glsStorageLocation :: Lens' GameLiftScript GameLiftScriptS3Location
glsStorageLocation = lens _gameLiftScriptStorageLocation (\s a -> s { _gameLiftScriptStorageLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html#cfn-gamelift-script-version
glsVersion :: Lens' GameLiftScript (Maybe (Val Text))
glsVersion = lens _gameLiftScriptVersion (\s a -> s { _gameLiftScriptVersion = a })
