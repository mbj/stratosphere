{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html

module Stratosphere.ResourceProperties.OpsWorksAppSslConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksAppSslConfiguration. See
-- | 'opsWorksAppSslConfiguration' for a more convenient constructor.
data OpsWorksAppSslConfiguration =
  OpsWorksAppSslConfiguration
  { _opsWorksAppSslConfigurationCertificate :: Maybe (Val Text)
  , _opsWorksAppSslConfigurationChain :: Maybe (Val Text)
  , _opsWorksAppSslConfigurationPrivateKey :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON OpsWorksAppSslConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON OpsWorksAppSslConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'OpsWorksAppSslConfiguration' containing required fields
-- | as arguments.
opsWorksAppSslConfiguration
  :: OpsWorksAppSslConfiguration
opsWorksAppSslConfiguration  =
  OpsWorksAppSslConfiguration
  { _opsWorksAppSslConfigurationCertificate = Nothing
  , _opsWorksAppSslConfigurationChain = Nothing
  , _opsWorksAppSslConfigurationPrivateKey = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-certificate
owascCertificate :: Lens' OpsWorksAppSslConfiguration (Maybe (Val Text))
owascCertificate = lens _opsWorksAppSslConfigurationCertificate (\s a -> s { _opsWorksAppSslConfigurationCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-chain
owascChain :: Lens' OpsWorksAppSslConfiguration (Maybe (Val Text))
owascChain = lens _opsWorksAppSslConfigurationChain (\s a -> s { _opsWorksAppSslConfigurationChain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-privatekey
owascPrivateKey :: Lens' OpsWorksAppSslConfiguration (Maybe (Val Text))
owascPrivateKey = lens _opsWorksAppSslConfigurationPrivateKey (\s a -> s { _opsWorksAppSslConfigurationPrivateKey = a })
