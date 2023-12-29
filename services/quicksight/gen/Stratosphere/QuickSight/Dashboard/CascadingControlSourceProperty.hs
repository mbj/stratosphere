module Stratosphere.QuickSight.Dashboard.CascadingControlSourceProperty (
        module Exports, CascadingControlSourceProperty(..),
        mkCascadingControlSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CascadingControlSourceProperty
  = CascadingControlSourceProperty {columnToMatch :: (Prelude.Maybe ColumnIdentifierProperty),
                                    sourceSheetControlId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCascadingControlSourceProperty :: CascadingControlSourceProperty
mkCascadingControlSourceProperty
  = CascadingControlSourceProperty
      {columnToMatch = Prelude.Nothing,
       sourceSheetControlId = Prelude.Nothing}
instance ToResourceProperties CascadingControlSourceProperty where
  toResourceProperties CascadingControlSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CascadingControlSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnToMatch" Prelude.<$> columnToMatch,
                            (JSON..=) "SourceSheetControlId"
                              Prelude.<$> sourceSheetControlId])}
instance JSON.ToJSON CascadingControlSourceProperty where
  toJSON CascadingControlSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnToMatch" Prelude.<$> columnToMatch,
               (JSON..=) "SourceSheetControlId"
                 Prelude.<$> sourceSheetControlId]))
instance Property "ColumnToMatch" CascadingControlSourceProperty where
  type PropertyType "ColumnToMatch" CascadingControlSourceProperty = ColumnIdentifierProperty
  set newValue CascadingControlSourceProperty {..}
    = CascadingControlSourceProperty
        {columnToMatch = Prelude.pure newValue, ..}
instance Property "SourceSheetControlId" CascadingControlSourceProperty where
  type PropertyType "SourceSheetControlId" CascadingControlSourceProperty = Value Prelude.Text
  set newValue CascadingControlSourceProperty {..}
    = CascadingControlSourceProperty
        {sourceSheetControlId = Prelude.pure newValue, ..}