module Stratosphere.Location.GeofenceCollection (
        GeofenceCollection(..), mkGeofenceCollection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeofenceCollection
  = GeofenceCollection {collectionName :: (Value Prelude.Text),
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
mkGeofenceCollection :: Value Prelude.Text -> GeofenceCollection
mkGeofenceCollection collectionName
  = GeofenceCollection
      {collectionName = collectionName, description = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties GeofenceCollection where
  toResourceProperties GeofenceCollection {..}
    = ResourceProperties
        {awsType = "AWS::Location::GeofenceCollection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionName" JSON..= collectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON GeofenceCollection where
  toJSON GeofenceCollection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionName" JSON..= collectionName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
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