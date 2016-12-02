{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html

module Stratosphere.ResourceProperties.OpsWorksStackChefConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksStackChefConfiguration. See
-- | 'opsWorksStackChefConfiguration' for a more convenient constructor.
data OpsWorksStackChefConfiguration =
  OpsWorksStackChefConfiguration
  { _opsWorksStackChefConfigurationBerkshelfVersion :: Maybe (Val Text)
  , _opsWorksStackChefConfigurationManageBerkshelf :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON OpsWorksStackChefConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON OpsWorksStackChefConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'OpsWorksStackChefConfiguration' containing required
-- | fields as arguments.
opsWorksStackChefConfiguration
  :: OpsWorksStackChefConfiguration
opsWorksStackChefConfiguration  =
  OpsWorksStackChefConfiguration
  { _opsWorksStackChefConfigurationBerkshelfVersion = Nothing
  , _opsWorksStackChefConfigurationManageBerkshelf = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
owsccBerkshelfVersion :: Lens' OpsWorksStackChefConfiguration (Maybe (Val Text))
owsccBerkshelfVersion = lens _opsWorksStackChefConfigurationBerkshelfVersion (\s a -> s { _opsWorksStackChefConfigurationBerkshelfVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
owsccManageBerkshelf :: Lens' OpsWorksStackChefConfiguration (Maybe (Val Bool'))
owsccManageBerkshelf = lens _opsWorksStackChefConfigurationManageBerkshelf (\s a -> s { _opsWorksStackChefConfigurationManageBerkshelf = a })
