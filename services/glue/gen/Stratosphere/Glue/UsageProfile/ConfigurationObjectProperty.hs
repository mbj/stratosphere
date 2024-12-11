module Stratosphere.Glue.UsageProfile.ConfigurationObjectProperty (
        ConfigurationObjectProperty(..), mkConfigurationObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationObjectProperty
  = ConfigurationObjectProperty {allowedValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                                 maxValue :: (Prelude.Maybe (Value Prelude.Text)),
                                 minValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationObjectProperty :: ConfigurationObjectProperty
mkConfigurationObjectProperty
  = ConfigurationObjectProperty
      {allowedValues = Prelude.Nothing, defaultValue = Prelude.Nothing,
       maxValue = Prelude.Nothing, minValue = Prelude.Nothing}
instance ToResourceProperties ConfigurationObjectProperty where
  toResourceProperties ConfigurationObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::UsageProfile.ConfigurationObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "MaxValue" Prelude.<$> maxValue,
                            (JSON..=) "MinValue" Prelude.<$> minValue])}
instance JSON.ToJSON ConfigurationObjectProperty where
  toJSON ConfigurationObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "MaxValue" Prelude.<$> maxValue,
               (JSON..=) "MinValue" Prelude.<$> minValue]))
instance Property "AllowedValues" ConfigurationObjectProperty where
  type PropertyType "AllowedValues" ConfigurationObjectProperty = ValueList Prelude.Text
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty
        {allowedValues = Prelude.pure newValue, ..}
instance Property "DefaultValue" ConfigurationObjectProperty where
  type PropertyType "DefaultValue" ConfigurationObjectProperty = Value Prelude.Text
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "MaxValue" ConfigurationObjectProperty where
  type PropertyType "MaxValue" ConfigurationObjectProperty = Value Prelude.Text
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty
        {maxValue = Prelude.pure newValue, ..}
instance Property "MinValue" ConfigurationObjectProperty where
  type PropertyType "MinValue" ConfigurationObjectProperty = Value Prelude.Text
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty
        {minValue = Prelude.pure newValue, ..}