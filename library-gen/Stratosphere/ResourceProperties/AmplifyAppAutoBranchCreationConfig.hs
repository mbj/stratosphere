{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html

module Stratosphere.ResourceProperties.AmplifyAppAutoBranchCreationConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmplifyAppBasicAuthConfig
import Stratosphere.ResourceProperties.AmplifyAppEnvironmentVariable

-- | Full data type definition for AmplifyAppAutoBranchCreationConfig. See
-- 'amplifyAppAutoBranchCreationConfig' for a more convenient constructor.
data AmplifyAppAutoBranchCreationConfig =
  AmplifyAppAutoBranchCreationConfig
  { _amplifyAppAutoBranchCreationConfigAutoBranchCreationPatterns :: Maybe (ValList Text)
  , _amplifyAppAutoBranchCreationConfigBasicAuthConfig :: Maybe AmplifyAppBasicAuthConfig
  , _amplifyAppAutoBranchCreationConfigBuildSpec :: Maybe (Val Text)
  , _amplifyAppAutoBranchCreationConfigEnableAutoBranchCreation :: Maybe (Val Bool)
  , _amplifyAppAutoBranchCreationConfigEnableAutoBuild :: Maybe (Val Bool)
  , _amplifyAppAutoBranchCreationConfigEnvironmentVariables :: Maybe [AmplifyAppEnvironmentVariable]
  , _amplifyAppAutoBranchCreationConfigStage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AmplifyAppAutoBranchCreationConfig where
  toJSON AmplifyAppAutoBranchCreationConfig{..} =
    object $
    catMaybes
    [ fmap (("AutoBranchCreationPatterns",) . toJSON) _amplifyAppAutoBranchCreationConfigAutoBranchCreationPatterns
    , fmap (("BasicAuthConfig",) . toJSON) _amplifyAppAutoBranchCreationConfigBasicAuthConfig
    , fmap (("BuildSpec",) . toJSON) _amplifyAppAutoBranchCreationConfigBuildSpec
    , fmap (("EnableAutoBranchCreation",) . toJSON) _amplifyAppAutoBranchCreationConfigEnableAutoBranchCreation
    , fmap (("EnableAutoBuild",) . toJSON) _amplifyAppAutoBranchCreationConfigEnableAutoBuild
    , fmap (("EnvironmentVariables",) . toJSON) _amplifyAppAutoBranchCreationConfigEnvironmentVariables
    , fmap (("Stage",) . toJSON) _amplifyAppAutoBranchCreationConfigStage
    ]

-- | Constructor for 'AmplifyAppAutoBranchCreationConfig' containing required
-- fields as arguments.
amplifyAppAutoBranchCreationConfig
  :: AmplifyAppAutoBranchCreationConfig
amplifyAppAutoBranchCreationConfig  =
  AmplifyAppAutoBranchCreationConfig
  { _amplifyAppAutoBranchCreationConfigAutoBranchCreationPatterns = Nothing
  , _amplifyAppAutoBranchCreationConfigBasicAuthConfig = Nothing
  , _amplifyAppAutoBranchCreationConfigBuildSpec = Nothing
  , _amplifyAppAutoBranchCreationConfigEnableAutoBranchCreation = Nothing
  , _amplifyAppAutoBranchCreationConfigEnableAutoBuild = Nothing
  , _amplifyAppAutoBranchCreationConfigEnvironmentVariables = Nothing
  , _amplifyAppAutoBranchCreationConfigStage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-autobranchcreationpatterns
aaabccAutoBranchCreationPatterns :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe (ValList Text))
aaabccAutoBranchCreationPatterns = lens _amplifyAppAutoBranchCreationConfigAutoBranchCreationPatterns (\s a -> s { _amplifyAppAutoBranchCreationConfigAutoBranchCreationPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-basicauthconfig
aaabccBasicAuthConfig :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe AmplifyAppBasicAuthConfig)
aaabccBasicAuthConfig = lens _amplifyAppAutoBranchCreationConfigBasicAuthConfig (\s a -> s { _amplifyAppAutoBranchCreationConfigBasicAuthConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-buildspec
aaabccBuildSpec :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe (Val Text))
aaabccBuildSpec = lens _amplifyAppAutoBranchCreationConfigBuildSpec (\s a -> s { _amplifyAppAutoBranchCreationConfigBuildSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobranchcreation
aaabccEnableAutoBranchCreation :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe (Val Bool))
aaabccEnableAutoBranchCreation = lens _amplifyAppAutoBranchCreationConfigEnableAutoBranchCreation (\s a -> s { _amplifyAppAutoBranchCreationConfigEnableAutoBranchCreation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobuild
aaabccEnableAutoBuild :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe (Val Bool))
aaabccEnableAutoBuild = lens _amplifyAppAutoBranchCreationConfigEnableAutoBuild (\s a -> s { _amplifyAppAutoBranchCreationConfigEnableAutoBuild = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-environmentvariables
aaabccEnvironmentVariables :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe [AmplifyAppEnvironmentVariable])
aaabccEnvironmentVariables = lens _amplifyAppAutoBranchCreationConfigEnvironmentVariables (\s a -> s { _amplifyAppAutoBranchCreationConfigEnvironmentVariables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-stage
aaabccStage :: Lens' AmplifyAppAutoBranchCreationConfig (Maybe (Val Text))
aaabccStage = lens _amplifyAppAutoBranchCreationConfigStage (\s a -> s { _amplifyAppAutoBranchCreationConfigStage = a })
