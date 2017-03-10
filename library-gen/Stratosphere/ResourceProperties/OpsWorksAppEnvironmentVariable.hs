{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html

module Stratosphere.ResourceProperties.OpsWorksAppEnvironmentVariable where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for OpsWorksAppEnvironmentVariable. See
-- 'opsWorksAppEnvironmentVariable' for a more convenient constructor.
data OpsWorksAppEnvironmentVariable =
  OpsWorksAppEnvironmentVariable
  { _opsWorksAppEnvironmentVariableKey :: Val Text
  , _opsWorksAppEnvironmentVariableSecure :: Maybe (Val Bool')
  , _opsWorksAppEnvironmentVariableValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON OpsWorksAppEnvironmentVariable where
  toJSON OpsWorksAppEnvironmentVariable{..} =
    object $
    catMaybes
    [ Just ("Key" .= _opsWorksAppEnvironmentVariableKey)
    , ("Secure" .=) <$> _opsWorksAppEnvironmentVariableSecure
    , Just ("Value" .= _opsWorksAppEnvironmentVariableValue)
    ]

instance FromJSON OpsWorksAppEnvironmentVariable where
  parseJSON (Object obj) =
    OpsWorksAppEnvironmentVariable <$>
      obj .: "Key" <*>
      obj .:? "Secure" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksAppEnvironmentVariable' containing required
-- fields as arguments.
opsWorksAppEnvironmentVariable
  :: Val Text -- ^ 'owaevKey'
  -> Val Text -- ^ 'owaevValue'
  -> OpsWorksAppEnvironmentVariable
opsWorksAppEnvironmentVariable keyarg valuearg =
  OpsWorksAppEnvironmentVariable
  { _opsWorksAppEnvironmentVariableKey = keyarg
  , _opsWorksAppEnvironmentVariableSecure = Nothing
  , _opsWorksAppEnvironmentVariableValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-key
owaevKey :: Lens' OpsWorksAppEnvironmentVariable (Val Text)
owaevKey = lens _opsWorksAppEnvironmentVariableKey (\s a -> s { _opsWorksAppEnvironmentVariableKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-secure
owaevSecure :: Lens' OpsWorksAppEnvironmentVariable (Maybe (Val Bool'))
owaevSecure = lens _opsWorksAppEnvironmentVariableSecure (\s a -> s { _opsWorksAppEnvironmentVariableSecure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#value
owaevValue :: Lens' OpsWorksAppEnvironmentVariable (Val Text)
owaevValue = lens _opsWorksAppEnvironmentVariableValue (\s a -> s { _opsWorksAppEnvironmentVariableValue = a })
