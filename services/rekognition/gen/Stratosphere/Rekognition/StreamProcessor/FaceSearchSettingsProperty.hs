module Stratosphere.Rekognition.StreamProcessor.FaceSearchSettingsProperty (
        FaceSearchSettingsProperty(..), mkFaceSearchSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FaceSearchSettingsProperty
  = FaceSearchSettingsProperty {collectionId :: (Value Prelude.Text),
                                faceMatchThreshold :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFaceSearchSettingsProperty ::
  Value Prelude.Text -> FaceSearchSettingsProperty
mkFaceSearchSettingsProperty collectionId
  = FaceSearchSettingsProperty
      {collectionId = collectionId, faceMatchThreshold = Prelude.Nothing}
instance ToResourceProperties FaceSearchSettingsProperty where
  toResourceProperties FaceSearchSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.FaceSearchSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionId" JSON..= collectionId]
                           (Prelude.catMaybes
                              [(JSON..=) "FaceMatchThreshold" Prelude.<$> faceMatchThreshold]))}
instance JSON.ToJSON FaceSearchSettingsProperty where
  toJSON FaceSearchSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionId" JSON..= collectionId]
              (Prelude.catMaybes
                 [(JSON..=) "FaceMatchThreshold" Prelude.<$> faceMatchThreshold])))
instance Property "CollectionId" FaceSearchSettingsProperty where
  type PropertyType "CollectionId" FaceSearchSettingsProperty = Value Prelude.Text
  set newValue FaceSearchSettingsProperty {..}
    = FaceSearchSettingsProperty {collectionId = newValue, ..}
instance Property "FaceMatchThreshold" FaceSearchSettingsProperty where
  type PropertyType "FaceMatchThreshold" FaceSearchSettingsProperty = Value Prelude.Double
  set newValue FaceSearchSettingsProperty {..}
    = FaceSearchSettingsProperty
        {faceMatchThreshold = Prelude.pure newValue, ..}