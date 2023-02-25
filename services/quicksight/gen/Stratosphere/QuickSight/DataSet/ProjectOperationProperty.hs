module Stratosphere.QuickSight.DataSet.ProjectOperationProperty (
        ProjectOperationProperty(..), mkProjectOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectOperationProperty
  = ProjectOperationProperty {projectedColumns :: (ValueList (Value Prelude.Text))}
mkProjectOperationProperty ::
  ValueList (Value Prelude.Text) -> ProjectOperationProperty
mkProjectOperationProperty projectedColumns
  = ProjectOperationProperty {projectedColumns = projectedColumns}
instance ToResourceProperties ProjectOperationProperty where
  toResourceProperties ProjectOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ProjectOperation",
         properties = ["ProjectedColumns" JSON..= projectedColumns]}
instance JSON.ToJSON ProjectOperationProperty where
  toJSON ProjectOperationProperty {..}
    = JSON.object ["ProjectedColumns" JSON..= projectedColumns]
instance Property "ProjectedColumns" ProjectOperationProperty where
  type PropertyType "ProjectedColumns" ProjectOperationProperty = ValueList (Value Prelude.Text)
  set newValue ProjectOperationProperty {}
    = ProjectOperationProperty {projectedColumns = newValue, ..}