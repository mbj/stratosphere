
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html

module Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting where

import Prelude
import Stratosphere.ResourceImports


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
