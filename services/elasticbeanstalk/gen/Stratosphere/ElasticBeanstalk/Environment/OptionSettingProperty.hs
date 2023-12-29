module Stratosphere.ElasticBeanstalk.Environment.OptionSettingProperty (
        OptionSettingProperty(..), mkOptionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionSettingProperty
  = OptionSettingProperty {namespace :: (Value Prelude.Text),
                           optionName :: (Value Prelude.Text),
                           resourceName :: (Prelude.Maybe (Value Prelude.Text)),
                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionSettingProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OptionSettingProperty
mkOptionSettingProperty namespace optionName
  = OptionSettingProperty
      {namespace = namespace, optionName = optionName,
       resourceName = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties OptionSettingProperty where
  toResourceProperties OptionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Environment.OptionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace, "OptionName" JSON..= optionName]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceName" Prelude.<$> resourceName,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON OptionSettingProperty where
  toJSON OptionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace, "OptionName" JSON..= optionName]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceName" Prelude.<$> resourceName,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Namespace" OptionSettingProperty where
  type PropertyType "Namespace" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {namespace = newValue, ..}
instance Property "OptionName" OptionSettingProperty where
  type PropertyType "OptionName" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {optionName = newValue, ..}
instance Property "ResourceName" OptionSettingProperty where
  type PropertyType "ResourceName" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {resourceName = Prelude.pure newValue, ..}
instance Property "Value" OptionSettingProperty where
  type PropertyType "Value" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {value = Prelude.pure newValue, ..}