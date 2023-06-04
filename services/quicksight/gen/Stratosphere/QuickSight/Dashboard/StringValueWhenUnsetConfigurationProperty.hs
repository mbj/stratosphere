module Stratosphere.QuickSight.Dashboard.StringValueWhenUnsetConfigurationProperty (
        StringValueWhenUnsetConfigurationProperty(..),
        mkStringValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringValueWhenUnsetConfigurationProperty
  = StringValueWhenUnsetConfigurationProperty {customValue :: (Prelude.Maybe (Value Prelude.Text)),
                                               valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
mkStringValueWhenUnsetConfigurationProperty ::
  StringValueWhenUnsetConfigurationProperty
mkStringValueWhenUnsetConfigurationProperty
  = StringValueWhenUnsetConfigurationProperty
      {customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties StringValueWhenUnsetConfigurationProperty where
  toResourceProperties StringValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.StringValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON StringValueWhenUnsetConfigurationProperty where
  toJSON StringValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" StringValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" StringValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue StringValueWhenUnsetConfigurationProperty {..}
    = StringValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" StringValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" StringValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue StringValueWhenUnsetConfigurationProperty {..}
    = StringValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}