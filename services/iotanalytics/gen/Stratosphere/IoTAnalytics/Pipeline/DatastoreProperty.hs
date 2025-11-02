module Stratosphere.IoTAnalytics.Pipeline.DatastoreProperty (
        DatastoreProperty(..), mkDatastoreProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatastoreProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html>
    DatastoreProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html#cfn-iotanalytics-pipeline-datastore-datastorename>
                       datastoreName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html#cfn-iotanalytics-pipeline-datastore-name>
                       name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatastoreProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DatastoreProperty
mkDatastoreProperty datastoreName name
  = DatastoreProperty
      {haddock_workaround_ = (), datastoreName = datastoreName,
       name = name}
instance ToResourceProperties DatastoreProperty where
  toResourceProperties DatastoreProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Datastore",
         supportsTags = Prelude.False,
         properties = ["DatastoreName" JSON..= datastoreName,
                       "Name" JSON..= name]}
instance JSON.ToJSON DatastoreProperty where
  toJSON DatastoreProperty {..}
    = JSON.object
        ["DatastoreName" JSON..= datastoreName, "Name" JSON..= name]
instance Property "DatastoreName" DatastoreProperty where
  type PropertyType "DatastoreName" DatastoreProperty = Value Prelude.Text
  set newValue DatastoreProperty {..}
    = DatastoreProperty {datastoreName = newValue, ..}
instance Property "Name" DatastoreProperty where
  type PropertyType "Name" DatastoreProperty = Value Prelude.Text
  set newValue DatastoreProperty {..}
    = DatastoreProperty {name = newValue, ..}