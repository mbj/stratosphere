module Stratosphere.QuickSight.Analysis.PivotTableFieldOptionProperty (
        PivotTableFieldOptionProperty(..), mkPivotTableFieldOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableFieldOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablefieldoption.html>
    PivotTableFieldOptionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablefieldoption.html#cfn-quicksight-analysis-pivottablefieldoption-customlabel>
                                   customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablefieldoption.html#cfn-quicksight-analysis-pivottablefieldoption-fieldid>
                                   fieldId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablefieldoption.html#cfn-quicksight-analysis-pivottablefieldoption-visibility>
                                   visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableFieldOptionProperty ::
  Value Prelude.Text -> PivotTableFieldOptionProperty
mkPivotTableFieldOptionProperty fieldId
  = PivotTableFieldOptionProperty
      {haddock_workaround_ = (), fieldId = fieldId,
       customLabel = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldOptionProperty where
  toResourceProperties PivotTableFieldOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PivotTableFieldOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON PivotTableFieldOptionProperty where
  toJSON PivotTableFieldOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "CustomLabel" PivotTableFieldOptionProperty where
  type PropertyType "CustomLabel" PivotTableFieldOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldOptionProperty {..}
    = PivotTableFieldOptionProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "FieldId" PivotTableFieldOptionProperty where
  type PropertyType "FieldId" PivotTableFieldOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldOptionProperty {..}
    = PivotTableFieldOptionProperty {fieldId = newValue, ..}
instance Property "Visibility" PivotTableFieldOptionProperty where
  type PropertyType "Visibility" PivotTableFieldOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldOptionProperty {..}
    = PivotTableFieldOptionProperty
        {visibility = Prelude.pure newValue, ..}