module Stratosphere.CodePipeline.Pipeline.ArtifactStoreProperty (
        module Exports, ArtifactStoreProperty(..), mkArtifactStoreProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.EncryptionKeyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArtifactStoreProperty
  = ArtifactStoreProperty {encryptionKey :: (Prelude.Maybe EncryptionKeyProperty),
                           location :: (Value Prelude.Text),
                           type' :: (Value Prelude.Text)}
mkArtifactStoreProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ArtifactStoreProperty
mkArtifactStoreProperty location type'
  = ArtifactStoreProperty
      {location = location, type' = type',
       encryptionKey = Prelude.Nothing}
instance ToResourceProperties ArtifactStoreProperty where
  toResourceProperties ArtifactStoreProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.ArtifactStore",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Location" JSON..= location, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionKey" Prelude.<$> encryptionKey]))}
instance JSON.ToJSON ArtifactStoreProperty where
  toJSON ArtifactStoreProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Location" JSON..= location, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionKey" Prelude.<$> encryptionKey])))
instance Property "EncryptionKey" ArtifactStoreProperty where
  type PropertyType "EncryptionKey" ArtifactStoreProperty = EncryptionKeyProperty
  set newValue ArtifactStoreProperty {..}
    = ArtifactStoreProperty {encryptionKey = Prelude.pure newValue, ..}
instance Property "Location" ArtifactStoreProperty where
  type PropertyType "Location" ArtifactStoreProperty = Value Prelude.Text
  set newValue ArtifactStoreProperty {..}
    = ArtifactStoreProperty {location = newValue, ..}
instance Property "Type" ArtifactStoreProperty where
  type PropertyType "Type" ArtifactStoreProperty = Value Prelude.Text
  set newValue ArtifactStoreProperty {..}
    = ArtifactStoreProperty {type' = newValue, ..}