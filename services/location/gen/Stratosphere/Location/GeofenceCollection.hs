module Stratosphere.Location.GeofenceCollection (
        GeofenceCollection(..), mkGeofenceCollection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GeofenceCollection
  = GeofenceCollection {collectionName :: (Value Prelude.Text),
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeofenceCollection :: Value Prelude.Text -> GeofenceCollection
mkGeofenceCollection collectionName
  = GeofenceCollection
      {collectionName = collectionName, description = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties GeofenceCollection where
  toResourceProperties GeofenceCollection {..}
    = ResourceProperties
        {awsType = "AWS::Location::GeofenceCollection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionName" JSON..= collectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON GeofenceCollection where
  toJSON GeofenceCollection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionName" JSON..= collectionName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CollectionName" GeofenceCollection where
  type PropertyType "CollectionName" GeofenceCollection = Value Prelude.Text
  set newValue GeofenceCollection {..}
    = GeofenceCollection {collectionName = newValue, ..}
instance Property "Description" GeofenceCollection where
  type PropertyType "Description" GeofenceCollection = Value Prelude.Text
  set newValue GeofenceCollection {..}
    = GeofenceCollection {description = Prelude.pure newValue, ..}
instance Property "KmsKeyId" GeofenceCollection where
  type PropertyType "KmsKeyId" GeofenceCollection = Value Prelude.Text
  set newValue GeofenceCollection {..}
    = GeofenceCollection {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Tags" GeofenceCollection where
  type PropertyType "Tags" GeofenceCollection = [Tag]
  set newValue GeofenceCollection {..}
    = GeofenceCollection {tags = Prelude.pure newValue, ..}