module Stratosphere.QuickSight.Analysis.FieldSortProperty (
        FieldSortProperty(..), mkFieldSortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldSortProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-fieldsort.html>
    FieldSortProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-fieldsort.html#cfn-quicksight-analysis-fieldsort-direction>
                       direction :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-fieldsort.html#cfn-quicksight-analysis-fieldsort-fieldid>
                       fieldId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldSortProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FieldSortProperty
mkFieldSortProperty direction fieldId
  = FieldSortProperty
      {haddock_workaround_ = (), direction = direction,
       fieldId = fieldId}
instance ToResourceProperties FieldSortProperty where
  toResourceProperties FieldSortProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FieldSort",
         supportsTags = Prelude.False,
         properties = ["Direction" JSON..= direction,
                       "FieldId" JSON..= fieldId]}
instance JSON.ToJSON FieldSortProperty where
  toJSON FieldSortProperty {..}
    = JSON.object
        ["Direction" JSON..= direction, "FieldId" JSON..= fieldId]
instance Property "Direction" FieldSortProperty where
  type PropertyType "Direction" FieldSortProperty = Value Prelude.Text
  set newValue FieldSortProperty {..}
    = FieldSortProperty {direction = newValue, ..}
instance Property "FieldId" FieldSortProperty where
  type PropertyType "FieldId" FieldSortProperty = Value Prelude.Text
  set newValue FieldSortProperty {..}
    = FieldSortProperty {fieldId = newValue, ..}