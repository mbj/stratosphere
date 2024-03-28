module Stratosphere.DataZone.DataSource.RedshiftServerlessStorageProperty (
        RedshiftServerlessStorageProperty(..),
        mkRedshiftServerlessStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftServerlessStorageProperty
  = RedshiftServerlessStorageProperty {workgroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftServerlessStorageProperty ::
  Value Prelude.Text -> RedshiftServerlessStorageProperty
mkRedshiftServerlessStorageProperty workgroupName
  = RedshiftServerlessStorageProperty {workgroupName = workgroupName}
instance ToResourceProperties RedshiftServerlessStorageProperty where
  toResourceProperties RedshiftServerlessStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.RedshiftServerlessStorage",
         supportsTags = Prelude.False,
         properties = ["WorkgroupName" JSON..= workgroupName]}
instance JSON.ToJSON RedshiftServerlessStorageProperty where
  toJSON RedshiftServerlessStorageProperty {..}
    = JSON.object ["WorkgroupName" JSON..= workgroupName]
instance Property "WorkgroupName" RedshiftServerlessStorageProperty where
  type PropertyType "WorkgroupName" RedshiftServerlessStorageProperty = Value Prelude.Text
  set newValue RedshiftServerlessStorageProperty {}
    = RedshiftServerlessStorageProperty {workgroupName = newValue, ..}