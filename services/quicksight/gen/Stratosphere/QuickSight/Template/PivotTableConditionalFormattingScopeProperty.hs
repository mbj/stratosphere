module Stratosphere.QuickSight.Template.PivotTableConditionalFormattingScopeProperty (
        PivotTableConditionalFormattingScopeProperty(..),
        mkPivotTableConditionalFormattingScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableConditionalFormattingScopeProperty
  = PivotTableConditionalFormattingScopeProperty {role :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableConditionalFormattingScopeProperty ::
  PivotTableConditionalFormattingScopeProperty
mkPivotTableConditionalFormattingScopeProperty
  = PivotTableConditionalFormattingScopeProperty
      {role = Prelude.Nothing}
instance ToResourceProperties PivotTableConditionalFormattingScopeProperty where
  toResourceProperties
    PivotTableConditionalFormattingScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableConditionalFormattingScope",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Role" Prelude.<$> role])}
instance JSON.ToJSON PivotTableConditionalFormattingScopeProperty where
  toJSON PivotTableConditionalFormattingScopeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Role" Prelude.<$> role]))
instance Property "Role" PivotTableConditionalFormattingScopeProperty where
  type PropertyType "Role" PivotTableConditionalFormattingScopeProperty = Value Prelude.Text
  set newValue PivotTableConditionalFormattingScopeProperty {}
    = PivotTableConditionalFormattingScopeProperty
        {role = Prelude.pure newValue, ..}