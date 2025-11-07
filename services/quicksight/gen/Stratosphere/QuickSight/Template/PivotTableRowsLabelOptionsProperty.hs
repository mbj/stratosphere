module Stratosphere.QuickSight.Template.PivotTableRowsLabelOptionsProperty (
        PivotTableRowsLabelOptionsProperty(..),
        mkPivotTableRowsLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableRowsLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablerowslabeloptions.html>
    PivotTableRowsLabelOptionsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablerowslabeloptions.html#cfn-quicksight-template-pivottablerowslabeloptions-customlabel>
                                        customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablerowslabeloptions.html#cfn-quicksight-template-pivottablerowslabeloptions-visibility>
                                        visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableRowsLabelOptionsProperty ::
  PivotTableRowsLabelOptionsProperty
mkPivotTableRowsLabelOptionsProperty
  = PivotTableRowsLabelOptionsProperty
      {haddock_workaround_ = (), customLabel = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties PivotTableRowsLabelOptionsProperty where
  toResourceProperties PivotTableRowsLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableRowsLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON PivotTableRowsLabelOptionsProperty where
  toJSON PivotTableRowsLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "CustomLabel" PivotTableRowsLabelOptionsProperty where
  type PropertyType "CustomLabel" PivotTableRowsLabelOptionsProperty = Value Prelude.Text
  set newValue PivotTableRowsLabelOptionsProperty {..}
    = PivotTableRowsLabelOptionsProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "Visibility" PivotTableRowsLabelOptionsProperty where
  type PropertyType "Visibility" PivotTableRowsLabelOptionsProperty = JSON.Object
  set newValue PivotTableRowsLabelOptionsProperty {..}
    = PivotTableRowsLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}