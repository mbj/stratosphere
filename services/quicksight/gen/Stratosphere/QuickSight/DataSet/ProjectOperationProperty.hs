module Stratosphere.QuickSight.DataSet.ProjectOperationProperty (
        ProjectOperationProperty(..), mkProjectOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-projectoperation.html>
    ProjectOperationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-projectoperation.html#cfn-quicksight-dataset-projectoperation-projectedcolumns>
                              projectedColumns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectOperationProperty ::
  ValueList Prelude.Text -> ProjectOperationProperty
mkProjectOperationProperty projectedColumns
  = ProjectOperationProperty
      {haddock_workaround_ = (), projectedColumns = projectedColumns}
instance ToResourceProperties ProjectOperationProperty where
  toResourceProperties ProjectOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ProjectOperation",
         supportsTags = Prelude.False,
         properties = ["ProjectedColumns" JSON..= projectedColumns]}
instance JSON.ToJSON ProjectOperationProperty where
  toJSON ProjectOperationProperty {..}
    = JSON.object ["ProjectedColumns" JSON..= projectedColumns]
instance Property "ProjectedColumns" ProjectOperationProperty where
  type PropertyType "ProjectedColumns" ProjectOperationProperty = ValueList Prelude.Text
  set newValue ProjectOperationProperty {..}
    = ProjectOperationProperty {projectedColumns = newValue, ..}