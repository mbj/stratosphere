module Stratosphere.QuickSight.Analysis.CascadingControlSourceProperty (
        module Exports, CascadingControlSourceProperty(..),
        mkCascadingControlSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CascadingControlSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-cascadingcontrolsource.html>
    CascadingControlSourceProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-cascadingcontrolsource.html#cfn-quicksight-analysis-cascadingcontrolsource-columntomatch>
                                    columnToMatch :: (Prelude.Maybe ColumnIdentifierProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-cascadingcontrolsource.html#cfn-quicksight-analysis-cascadingcontrolsource-sourcesheetcontrolid>
                                    sourceSheetControlId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCascadingControlSourceProperty :: CascadingControlSourceProperty
mkCascadingControlSourceProperty
  = CascadingControlSourceProperty
      {haddock_workaround_ = (), columnToMatch = Prelude.Nothing,
       sourceSheetControlId = Prelude.Nothing}
instance ToResourceProperties CascadingControlSourceProperty where
  toResourceProperties CascadingControlSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CascadingControlSource",
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