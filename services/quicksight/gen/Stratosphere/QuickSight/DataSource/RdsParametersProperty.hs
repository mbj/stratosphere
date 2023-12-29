module Stratosphere.QuickSight.DataSource.RdsParametersProperty (
        RdsParametersProperty(..), mkRdsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsParametersProperty
  = RdsParametersProperty {database :: (Value Prelude.Text),
                           instanceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRdsParametersProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RdsParametersProperty
mkRdsParametersProperty database instanceId
  = RdsParametersProperty
      {database = database, instanceId = instanceId}
instance ToResourceProperties RdsParametersProperty where
  toResourceProperties RdsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.RdsParameters",
         supportsTags = Prelude.False,
         properties = ["Database" JSON..= database,
                       "InstanceId" JSON..= instanceId]}
instance JSON.ToJSON RdsParametersProperty where
  toJSON RdsParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "InstanceId" JSON..= instanceId]
instance Property "Database" RdsParametersProperty where
  type PropertyType "Database" RdsParametersProperty = Value Prelude.Text
  set newValue RdsParametersProperty {..}
    = RdsParametersProperty {database = newValue, ..}
instance Property "InstanceId" RdsParametersProperty where
  type PropertyType "InstanceId" RdsParametersProperty = Value Prelude.Text
  set newValue RdsParametersProperty {..}
    = RdsParametersProperty {instanceId = newValue, ..}