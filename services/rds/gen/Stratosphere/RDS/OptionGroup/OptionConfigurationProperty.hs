module Stratosphere.RDS.OptionGroup.OptionConfigurationProperty (
        module Exports, OptionConfigurationProperty(..),
        mkOptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.OptionGroup.OptionSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionConfigurationProperty
  = OptionConfigurationProperty {dBSecurityGroupMemberships :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 optionName :: (Value Prelude.Text),
                                 optionSettings :: (Prelude.Maybe [OptionSettingProperty]),
                                 optionVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                 port :: (Prelude.Maybe (Value Prelude.Integer)),
                                 vpcSecurityGroupMemberships :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkOptionConfigurationProperty ::
  Value Prelude.Text -> OptionConfigurationProperty
mkOptionConfigurationProperty optionName
  = OptionConfigurationProperty
      {optionName = optionName,
       dBSecurityGroupMemberships = Prelude.Nothing,
       optionSettings = Prelude.Nothing, optionVersion = Prelude.Nothing,
       port = Prelude.Nothing,
       vpcSecurityGroupMemberships = Prelude.Nothing}
instance ToResourceProperties OptionConfigurationProperty where
  toResourceProperties OptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::OptionGroup.OptionConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OptionName" JSON..= optionName]
                           (Prelude.catMaybes
                              [(JSON..=) "DBSecurityGroupMemberships"
                                 Prelude.<$> dBSecurityGroupMemberships,
                               (JSON..=) "OptionSettings" Prelude.<$> optionSettings,
                               (JSON..=) "OptionVersion" Prelude.<$> optionVersion,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "VpcSecurityGroupMemberships"
                                 Prelude.<$> vpcSecurityGroupMemberships]))}
instance JSON.ToJSON OptionConfigurationProperty where
  toJSON OptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OptionName" JSON..= optionName]
              (Prelude.catMaybes
                 [(JSON..=) "DBSecurityGroupMemberships"
                    Prelude.<$> dBSecurityGroupMemberships,
                  (JSON..=) "OptionSettings" Prelude.<$> optionSettings,
                  (JSON..=) "OptionVersion" Prelude.<$> optionVersion,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "VpcSecurityGroupMemberships"
                    Prelude.<$> vpcSecurityGroupMemberships])))
instance Property "DBSecurityGroupMemberships" OptionConfigurationProperty where
  type PropertyType "DBSecurityGroupMemberships" OptionConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty
        {dBSecurityGroupMemberships = Prelude.pure newValue, ..}
instance Property "OptionName" OptionConfigurationProperty where
  type PropertyType "OptionName" OptionConfigurationProperty = Value Prelude.Text
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty {optionName = newValue, ..}
instance Property "OptionSettings" OptionConfigurationProperty where
  type PropertyType "OptionSettings" OptionConfigurationProperty = [OptionSettingProperty]
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty
        {optionSettings = Prelude.pure newValue, ..}
instance Property "OptionVersion" OptionConfigurationProperty where
  type PropertyType "OptionVersion" OptionConfigurationProperty = Value Prelude.Text
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty
        {optionVersion = Prelude.pure newValue, ..}
instance Property "Port" OptionConfigurationProperty where
  type PropertyType "Port" OptionConfigurationProperty = Value Prelude.Integer
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty {port = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupMemberships" OptionConfigurationProperty where
  type PropertyType "VpcSecurityGroupMemberships" OptionConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty
        {vpcSecurityGroupMemberships = Prelude.pure newValue, ..}