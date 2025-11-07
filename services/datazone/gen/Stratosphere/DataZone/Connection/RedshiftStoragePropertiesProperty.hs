module Stratosphere.DataZone.Connection.RedshiftStoragePropertiesProperty (
        RedshiftStoragePropertiesProperty(..),
        mkRedshiftStoragePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftStoragePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftstorageproperties.html>
    RedshiftStoragePropertiesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftstorageproperties.html#cfn-datazone-connection-redshiftstorageproperties-clustername>
                                       clusterName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftstorageproperties.html#cfn-datazone-connection-redshiftstorageproperties-workgroupname>
                                       workgroupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftStoragePropertiesProperty ::
  RedshiftStoragePropertiesProperty
mkRedshiftStoragePropertiesProperty
  = RedshiftStoragePropertiesProperty
      {haddock_workaround_ = (), clusterName = Prelude.Nothing,
       workgroupName = Prelude.Nothing}
instance ToResourceProperties RedshiftStoragePropertiesProperty where
  toResourceProperties RedshiftStoragePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.RedshiftStorageProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterName" Prelude.<$> clusterName,
                            (JSON..=) "WorkgroupName" Prelude.<$> workgroupName])}
instance JSON.ToJSON RedshiftStoragePropertiesProperty where
  toJSON RedshiftStoragePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterName" Prelude.<$> clusterName,
               (JSON..=) "WorkgroupName" Prelude.<$> workgroupName]))
instance Property "ClusterName" RedshiftStoragePropertiesProperty where
  type PropertyType "ClusterName" RedshiftStoragePropertiesProperty = Value Prelude.Text
  set newValue RedshiftStoragePropertiesProperty {..}
    = RedshiftStoragePropertiesProperty
        {clusterName = Prelude.pure newValue, ..}
instance Property "WorkgroupName" RedshiftStoragePropertiesProperty where
  type PropertyType "WorkgroupName" RedshiftStoragePropertiesProperty = Value Prelude.Text
  set newValue RedshiftStoragePropertiesProperty {..}
    = RedshiftStoragePropertiesProperty
        {workgroupName = Prelude.pure newValue, ..}