{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-smsconfiguration.html

module Stratosphere.ResourceProperties.CognitoUserPoolSmsConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoUserPoolSmsConfiguration. See
-- 'cognitoUserPoolSmsConfiguration' for a more convenient constructor.
data CognitoUserPoolSmsConfiguration =
  CognitoUserPoolSmsConfiguration
  { _cognitoUserPoolSmsConfigurationExternalId :: Maybe (Val Text)
  , _cognitoUserPoolSmsConfigurationSnsCallerArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolSmsConfiguration where
  toJSON CognitoUserPoolSmsConfiguration{..} =
    object $
    catMaybes
    [ ("ExternalId" .=) <$> _cognitoUserPoolSmsConfigurationExternalId
    , ("SnsCallerArn" .=) <$> _cognitoUserPoolSmsConfigurationSnsCallerArn
    ]

instance FromJSON CognitoUserPoolSmsConfiguration where
  parseJSON (Object obj) =
    CognitoUserPoolSmsConfiguration <$>
      obj .:? "ExternalId" <*>
      obj .:? "SnsCallerArn"
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolSmsConfiguration' containing required
-- fields as arguments.
cognitoUserPoolSmsConfiguration
  :: CognitoUserPoolSmsConfiguration
cognitoUserPoolSmsConfiguration  =
  CognitoUserPoolSmsConfiguration
  { _cognitoUserPoolSmsConfigurationExternalId = Nothing
  , _cognitoUserPoolSmsConfigurationSnsCallerArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-smsconfiguration.html#cfn-cognito-userpool-smsconfiguration-externalid
cupscExternalId :: Lens' CognitoUserPoolSmsConfiguration (Maybe (Val Text))
cupscExternalId = lens _cognitoUserPoolSmsConfigurationExternalId (\s a -> s { _cognitoUserPoolSmsConfigurationExternalId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-smsconfiguration.html#cfn-cognito-userpool-smsconfiguration-snscallerarn
cupscSnsCallerArn :: Lens' CognitoUserPoolSmsConfiguration (Maybe (Val Text))
cupscSnsCallerArn = lens _cognitoUserPoolSmsConfigurationSnsCallerArn (\s a -> s { _cognitoUserPoolSmsConfigurationSnsCallerArn = a })
