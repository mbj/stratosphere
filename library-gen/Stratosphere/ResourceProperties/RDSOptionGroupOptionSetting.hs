{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html

module Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RDSOptionGroupOptionSetting. See
-- | 'rdsOptionGroupOptionSetting' for a more convenient constructor.
data RDSOptionGroupOptionSetting =
  RDSOptionGroupOptionSetting
  { _rDSOptionGroupOptionSettingName :: Maybe (Val Text)
  , _rDSOptionGroupOptionSettingValue :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON RDSOptionGroupOptionSetting where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON RDSOptionGroupOptionSetting where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'RDSOptionGroupOptionSetting' containing required fields
-- | as arguments.
rdsOptionGroupOptionSetting
  :: RDSOptionGroupOptionSetting
rdsOptionGroupOptionSetting  =
  RDSOptionGroupOptionSetting
  { _rDSOptionGroupOptionSettingName = Nothing
  , _rDSOptionGroupOptionSettingValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html#cfn-rds-optiongroup-optionconfigurations-optionsettings-name
rdsogosName :: Lens' RDSOptionGroupOptionSetting (Maybe (Val Text))
rdsogosName = lens _rDSOptionGroupOptionSettingName (\s a -> s { _rDSOptionGroupOptionSettingName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html#cfn-rds-optiongroup-optionconfigurations-optionsettings-value
rdsogosValue :: Lens' RDSOptionGroupOptionSetting (Maybe (Val Text))
rdsogosValue = lens _rDSOptionGroupOptionSettingValue (\s a -> s { _rDSOptionGroupOptionSettingValue = a })
