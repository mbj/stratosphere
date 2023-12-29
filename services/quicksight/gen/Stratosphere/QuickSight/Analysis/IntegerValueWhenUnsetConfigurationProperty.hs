module Stratosphere.QuickSight.Analysis.IntegerValueWhenUnsetConfigurationProperty (
        IntegerValueWhenUnsetConfigurationProperty(..),
        mkIntegerValueWhenUnsetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerValueWhenUnsetConfigurationProperty
  = IntegerValueWhenUnsetConfigurationProperty {customValue :: (Prelude.Maybe (Value Prelude.Double)),
                                                valueWhenUnsetOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegerValueWhenUnsetConfigurationProperty ::
  IntegerValueWhenUnsetConfigurationProperty
mkIntegerValueWhenUnsetConfigurationProperty
  = IntegerValueWhenUnsetConfigurationProperty
      {customValue = Prelude.Nothing,
       valueWhenUnsetOption = Prelude.Nothing}
instance ToResourceProperties IntegerValueWhenUnsetConfigurationProperty where
  toResourceProperties
    IntegerValueWhenUnsetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.IntegerValueWhenUnsetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "ValueWhenUnsetOption"
                              Prelude.<$> valueWhenUnsetOption])}
instance JSON.ToJSON IntegerValueWhenUnsetConfigurationProperty where
  toJSON IntegerValueWhenUnsetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "ValueWhenUnsetOption"
                 Prelude.<$> valueWhenUnsetOption]))
instance Property "CustomValue" IntegerValueWhenUnsetConfigurationProperty where
  type PropertyType "CustomValue" IntegerValueWhenUnsetConfigurationProperty = Value Prelude.Double
  set newValue IntegerValueWhenUnsetConfigurationProperty {..}
    = IntegerValueWhenUnsetConfigurationProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "ValueWhenUnsetOption" IntegerValueWhenUnsetConfigurationProperty where
  type PropertyType "ValueWhenUnsetOption" IntegerValueWhenUnsetConfigurationProperty = Value Prelude.Text
  set newValue IntegerValueWhenUnsetConfigurationProperty {..}
    = IntegerValueWhenUnsetConfigurationProperty
        {valueWhenUnsetOption = Prelude.pure newValue, ..}