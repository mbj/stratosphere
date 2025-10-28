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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html>
    OptionConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html#cfn-rds-optiongroup-optionconfiguration-dbsecuritygroupmemberships>
                                 dBSecurityGroupMemberships :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html#cfn-rds-optiongroup-optionconfiguration-optionname>
                                 optionName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html#cfn-rds-optiongroup-optionconfiguration-optionsettings>
                                 optionSettings :: (Prelude.Maybe [OptionSettingProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html#cfn-rds-optiongroup-optionconfiguration-optionversion>
                                 optionVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html#cfn-rds-optiongroup-optionconfiguration-port>
                                 port :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfiguration.html#cfn-rds-optiongroup-optionconfiguration-vpcsecuritygroupmemberships>
                                 vpcSecurityGroupMemberships :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionConfigurationProperty ::
  Value Prelude.Text -> OptionConfigurationProperty
mkOptionConfigurationProperty optionName
  = OptionConfigurationProperty
      {haddock_workaround_ = (), optionName = optionName,
       dBSecurityGroupMemberships = Prelude.Nothing,
       optionSettings = Prelude.Nothing, optionVersion = Prelude.Nothing,
       port = Prelude.Nothing,
       vpcSecurityGroupMemberships = Prelude.Nothing}
instance ToResourceProperties OptionConfigurationProperty where
  toResourceProperties OptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::OptionGroup.OptionConfiguration",
         supportsTags = Prelude.False,
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
  type PropertyType "DBSecurityGroupMemberships" OptionConfigurationProperty = ValueList Prelude.Text
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
  type PropertyType "VpcSecurityGroupMemberships" OptionConfigurationProperty = ValueList Prelude.Text
  set newValue OptionConfigurationProperty {..}
    = OptionConfigurationProperty
        {vpcSecurityGroupMemberships = Prelude.pure newValue, ..}