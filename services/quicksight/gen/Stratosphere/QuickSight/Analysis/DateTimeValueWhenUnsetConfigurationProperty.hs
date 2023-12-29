module Stratosphere.QuickSight.Analysis.DateTimeValueWhenUnsetConfigurationProperty (
        DateTimeValueWhenUnsetConfigurationProperty(..),
        mkDateTimeValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeValueWhenUnsetConfigurationProperty
  = DateTimeValueWhenUnsetConfigurationProperty {customValue :: (Prelude.Maybe (Value Prelude.Text)),
                                                 valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeValueWhenUnsetConfigurationProperty ::
  DateTimeValueWhenUnsetConfigurationProperty
mkDateTimeValueWhenUnsetConfigurationProperty
  = DateTimeValueWhenUnsetConfigurationProperty
      {customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties DateTimeValueWhenUnsetConfigurationProperty where
  toResourceProperties
    DateTimeValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DateTimeValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON DateTimeValueWhenUnsetConfigurationProperty where
  toJSON DateTimeValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" DateTimeValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" DateTimeValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue DateTimeValueWhenUnsetConfigurationProperty {..}
    = DateTimeValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" DateTimeValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" DateTimeValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue DateTimeValueWhenUnsetConfigurationProperty {..}
    = DateTimeValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}