module Stratosphere.HealthImaging.Datastore (
        Datastore(..), mkDatastore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Datastore
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-healthimaging-datastore.html>
    Datastore {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-healthimaging-datastore.html#cfn-healthimaging-datastore-datastorename>
               datastoreName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-healthimaging-datastore.html#cfn-healthimaging-datastore-kmskeyarn>
               kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-healthimaging-datastore.html#cfn-healthimaging-datastore-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatastore :: Datastore
mkDatastore
  = Datastore
      {haddock_workaround_ = (), datastoreName = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Datastore where
  toResourceProperties Datastore {..}
    = ResourceProperties
        {awsType = "AWS::HealthImaging::Datastore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatastoreName" Prelude.<$> datastoreName,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Datastore where
  toJSON Datastore {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatastoreName" Prelude.<$> datastoreName,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DatastoreName" Datastore where
  type PropertyType "DatastoreName" Datastore = Value Prelude.Text
  set newValue Datastore {..}
    = Datastore {datastoreName = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Datastore where
  type PropertyType "KmsKeyArn" Datastore = Value Prelude.Text
  set newValue Datastore {..}
    = Datastore {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Tags" Datastore where
  type PropertyType "Tags" Datastore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Datastore {..}
    = Datastore {tags = Prelude.pure newValue, ..}