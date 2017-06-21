{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html

module Stratosphere.ResourceProperties.CognitoUserPoolDeviceConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoUserPoolDeviceConfiguration. See
-- 'cognitoUserPoolDeviceConfiguration' for a more convenient constructor.
data CognitoUserPoolDeviceConfiguration =
  CognitoUserPoolDeviceConfiguration
  { _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice :: Maybe (Val Bool')
  , _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolDeviceConfiguration where
  toJSON CognitoUserPoolDeviceConfiguration{..} =
    object $
    catMaybes
    [ ("ChallengeRequiredOnNewDevice" .=) <$> _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice
    , ("DeviceOnlyRememberedOnUserPrompt" .=) <$> _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt
    ]

instance FromJSON CognitoUserPoolDeviceConfiguration where
  parseJSON (Object obj) =
    CognitoUserPoolDeviceConfiguration <$>
      obj .:? "ChallengeRequiredOnNewDevice" <*>
      obj .:? "DeviceOnlyRememberedOnUserPrompt"
  parseJSON _ = mempty

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
cupdcChallengeRequiredOnNewDevice :: Lens' CognitoUserPoolDeviceConfiguration (Maybe (Val Bool'))
cupdcChallengeRequiredOnNewDevice = lens _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice (\s a -> s { _cognitoUserPoolDeviceConfigurationChallengeRequiredOnNewDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-deviceonlyrememberedonuserprompt
cupdcDeviceOnlyRememberedOnUserPrompt :: Lens' CognitoUserPoolDeviceConfiguration (Maybe (Val Bool'))
cupdcDeviceOnlyRememberedOnUserPrompt = lens _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt (\s a -> s { _cognitoUserPoolDeviceConfigurationDeviceOnlyRememberedOnUserPrompt = a })
