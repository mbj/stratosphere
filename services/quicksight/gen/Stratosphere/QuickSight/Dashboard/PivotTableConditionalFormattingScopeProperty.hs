module Stratosphere.QuickSight.Dashboard.PivotTableConditionalFormattingScopeProperty (
        PivotTableConditionalFormattingScopeProperty(..),
        mkPivotTableConditionalFormattingScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableConditionalFormattingScopeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconditionalformattingscope.html>
    PivotTableConditionalFormattingScopeProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconditionalformattingscope.html#cfn-quicksight-dashboard-pivottableconditionalformattingscope-role>
                                                  role :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableConditionalFormattingScopeProperty ::
  PivotTableConditionalFormattingScopeProperty
mkPivotTableConditionalFormattingScopeProperty
  = PivotTableConditionalFormattingScopeProperty
      {haddock_workaround_ = (), role = Prelude.Nothing}
instance ToResourceProperties PivotTableConditionalFormattingScopeProperty where
  toResourceProperties
    PivotTableConditionalFormattingScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableConditionalFormattingScope",
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
  set newValue PivotTableConditionalFormattingScopeProperty {..}
    = PivotTableConditionalFormattingScopeProperty
        {role = Prelude.pure newValue, ..}