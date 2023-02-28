module Stratosphere.ElasticBeanstalk.ConfigurationTemplate.ConfigurationOptionSettingProperty (
        ConfigurationOptionSettingProperty(..),
        mkConfigurationOptionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationOptionSettingProperty
  = ConfigurationOptionSettingProperty {namespace :: (Value Prelude.Text),
                                        optionName :: (Value Prelude.Text),
                                        resourceName :: (Prelude.Maybe (Value Prelude.Text)),
                                        value :: (Prelude.Maybe (Value Prelude.Text))}
mkConfigurationOptionSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConfigurationOptionSettingProperty
mkConfigurationOptionSettingProperty namespace optionName
  = ConfigurationOptionSettingProperty
      {namespace = namespace, optionName = optionName,
       resourceName = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ConfigurationOptionSettingProperty where
  toResourceProperties ConfigurationOptionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::ConfigurationTemplate.ConfigurationOptionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace, "OptionName" JSON..= optionName]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceName" Prelude.<$> resourceName,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ConfigurationOptionSettingProperty where
  toJSON ConfigurationOptionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace, "OptionName" JSON..= optionName]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceName" Prelude.<$> resourceName,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Namespace" ConfigurationOptionSettingProperty where
  type PropertyType "Namespace" ConfigurationOptionSettingProperty = Value Prelude.Text
  set newValue ConfigurationOptionSettingProperty {..}
    = ConfigurationOptionSettingProperty {namespace = newValue, ..}
instance Property "OptionName" ConfigurationOptionSettingProperty where
  type PropertyType "OptionName" ConfigurationOptionSettingProperty = Value Prelude.Text
  set newValue ConfigurationOptionSettingProperty {..}
    = ConfigurationOptionSettingProperty {optionName = newValue, ..}
instance Property "ResourceName" ConfigurationOptionSettingProperty where
  type PropertyType "ResourceName" ConfigurationOptionSettingProperty = Value Prelude.Text
  set newValue ConfigurationOptionSettingProperty {..}
    = ConfigurationOptionSettingProperty
        {resourceName = Prelude.pure newValue, ..}
instance Property "Value" ConfigurationOptionSettingProperty where
  type PropertyType "Value" ConfigurationOptionSettingProperty = Value Prelude.Text
  set newValue ConfigurationOptionSettingProperty {..}
    = ConfigurationOptionSettingProperty
        {value = Prelude.pure newValue, ..}