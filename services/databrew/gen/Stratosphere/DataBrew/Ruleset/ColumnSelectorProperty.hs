module Stratosphere.DataBrew.Ruleset.ColumnSelectorProperty (
        ColumnSelectorProperty(..), mkColumnSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnSelectorProperty
  = ColumnSelectorProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                            regex :: (Prelude.Maybe (Value Prelude.Text))}
mkColumnSelectorProperty :: ColumnSelectorProperty
mkColumnSelectorProperty
  = ColumnSelectorProperty
      {name = Prelude.Nothing, regex = Prelude.Nothing}
instance ToResourceProperties ColumnSelectorProperty where
  toResourceProperties ColumnSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Ruleset.ColumnSelector",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Regex" Prelude.<$> regex])}
instance JSON.ToJSON ColumnSelectorProperty where
  toJSON ColumnSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Regex" Prelude.<$> regex]))
instance Property "Name" ColumnSelectorProperty where
  type PropertyType "Name" ColumnSelectorProperty = Value Prelude.Text
  set newValue ColumnSelectorProperty {..}
    = ColumnSelectorProperty {name = Prelude.pure newValue, ..}
instance Property "Regex" ColumnSelectorProperty where
  type PropertyType "Regex" ColumnSelectorProperty = Value Prelude.Text
  set newValue ColumnSelectorProperty {..}
    = ColumnSelectorProperty {regex = Prelude.pure newValue, ..}