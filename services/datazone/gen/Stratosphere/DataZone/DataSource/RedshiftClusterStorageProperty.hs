module Stratosphere.DataZone.DataSource.RedshiftClusterStorageProperty (
        RedshiftClusterStorageProperty(..),
        mkRedshiftClusterStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftClusterStorageProperty
  = RedshiftClusterStorageProperty {clusterName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftClusterStorageProperty ::
  Value Prelude.Text -> RedshiftClusterStorageProperty
mkRedshiftClusterStorageProperty clusterName
  = RedshiftClusterStorageProperty {clusterName = clusterName}
instance ToResourceProperties RedshiftClusterStorageProperty where
  toResourceProperties RedshiftClusterStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.RedshiftClusterStorage",
         supportsTags = Prelude.False,
         properties = ["ClusterName" JSON..= clusterName]}
instance JSON.ToJSON RedshiftClusterStorageProperty where
  toJSON RedshiftClusterStorageProperty {..}
    = JSON.object ["ClusterName" JSON..= clusterName]
instance Property "ClusterName" RedshiftClusterStorageProperty where
  type PropertyType "ClusterName" RedshiftClusterStorageProperty = Value Prelude.Text
  set newValue RedshiftClusterStorageProperty {}
    = RedshiftClusterStorageProperty {clusterName = newValue, ..}