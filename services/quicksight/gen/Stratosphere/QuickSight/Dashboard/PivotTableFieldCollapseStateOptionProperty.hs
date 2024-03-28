module Stratosphere.QuickSight.Dashboard.PivotTableFieldCollapseStateOptionProperty (
        module Exports, PivotTableFieldCollapseStateOptionProperty(..),
        mkPivotTableFieldCollapseStateOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableFieldCollapseStateTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableFieldCollapseStateOptionProperty
  = PivotTableFieldCollapseStateOptionProperty {state :: (Prelude.Maybe (Value Prelude.Text)),
                                                target :: PivotTableFieldCollapseStateTargetProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableFieldCollapseStateOptionProperty ::
  PivotTableFieldCollapseStateTargetProperty
  -> PivotTableFieldCollapseStateOptionProperty
mkPivotTableFieldCollapseStateOptionProperty target
  = PivotTableFieldCollapseStateOptionProperty
      {target = target, state = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldCollapseStateOptionProperty where
  toResourceProperties
    PivotTableFieldCollapseStateOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableFieldCollapseStateOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Target" JSON..= target]
                           (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state]))}
instance JSON.ToJSON PivotTableFieldCollapseStateOptionProperty where
  toJSON PivotTableFieldCollapseStateOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Target" JSON..= target]
              (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state])))
instance Property "State" PivotTableFieldCollapseStateOptionProperty where
  type PropertyType "State" PivotTableFieldCollapseStateOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldCollapseStateOptionProperty {..}
    = PivotTableFieldCollapseStateOptionProperty
        {state = Prelude.pure newValue, ..}
instance Property "Target" PivotTableFieldCollapseStateOptionProperty where
  type PropertyType "Target" PivotTableFieldCollapseStateOptionProperty = PivotTableFieldCollapseStateTargetProperty
  set newValue PivotTableFieldCollapseStateOptionProperty {..}
    = PivotTableFieldCollapseStateOptionProperty
        {target = newValue, ..}