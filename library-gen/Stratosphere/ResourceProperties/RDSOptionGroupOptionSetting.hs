{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html

module Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for RDSOptionGroupOptionSetting. See
-- 'rdsOptionGroupOptionSetting' for a more convenient constructor.
data RDSOptionGroupOptionSetting =
  RDSOptionGroupOptionSetting
  { _rDSOptionGroupOptionSettingName :: Maybe (Val Text)
  , _rDSOptionGroupOptionSettingValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RDSOptionGroupOptionSetting where
  toJSON RDSOptionGroupOptionSetting{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _rDSOptionGroupOptionSettingName
    , fmap (("Value",) . toJSON) _rDSOptionGroupOptionSettingValue
    ]

instance FromJSON RDSOptionGroupOptionSetting where
  parseJSON (Object obj) =
    RDSOptionGroupOptionSetting <$>
      (obj .:? "Name") <*>
      (obj .:? "Value")
  parseJSON _ = mempty

-- | Constructor for 'RDSOptionGroupOptionSetting' containing required fields
-- as arguments.
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
