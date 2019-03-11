{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html

module Stratosphere.ResourceProperties.CognitoUserPoolDeviceConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolDeviceConfiguration. See
-- 'cognitoUserPoolDeviceConfiguration' for a more convenient constructor.
data CognitoUserPoolDeviceConfiguration =
  CognitoUserPoolDeviceConfiguration
  { _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice :: Maybe (Val Bool)
  , _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolDeviceConfiguration where
  toJSON CognitoUserPoolDeviceConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ChallengeRequiredOnNewDevice",) . toJSON . fmap Bool') _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice
    , fmap (("DeviceOnlyRememberedOnUserPrompt",) . toJSON . fmap Bool') _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt
    ]

-- | Constructor for 'CognitoUserPoolDeviceConfiguration' containing required
-- fields as arguments.
cognitoUserPoolDeviceConfiguration
  :: CognitoUserPoolDeviceConfiguration
cognitoUserPoolDeviceConfiguration  =
  CognitoUserPoolDeviceConfiguration
  { _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice = Nothing
  , _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-challengerequiredonnewdevice
cupdcChallengeRequiredOnNewDevice :: Lens' CognitoUserPoolDeviceConfiguration (Maybe (Val Bool))
cupdcChallengeRequiredOnNewDevice = lens _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice (\s a -> s { _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-deviceonlyrememberedonuserprompt
cupdcDeviceOnlyRememberedOnUserPrompt :: Lens' CognitoUserPoolDeviceConfiguration (Maybe (Val Bool))
cupdcDeviceOnlyRememberedOnUserPrompt = lens _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt (\s a -> s { _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt = a })
