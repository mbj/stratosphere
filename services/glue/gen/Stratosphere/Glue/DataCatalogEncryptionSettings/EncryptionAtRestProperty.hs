module Stratosphere.Glue.DataCatalogEncryptionSettings.EncryptionAtRestProperty (
        EncryptionAtRestProperty(..), mkEncryptionAtRestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionAtRestProperty
  = EncryptionAtRestProperty {catalogEncryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                              sseAwsKmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
mkEncryptionAtRestProperty :: EncryptionAtRestProperty
mkEncryptionAtRestProperty
  = EncryptionAtRestProperty
      {catalogEncryptionMode = Prelude.Nothing,
       sseAwsKmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionAtRestProperty where
  toResourceProperties EncryptionAtRestProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DataCatalogEncryptionSettings.EncryptionAtRest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogEncryptionMode"
                              Prelude.<$> catalogEncryptionMode,
                            (JSON..=) "SseAwsKmsKeyId" Prelude.<$> sseAwsKmsKeyId])}
instance JSON.ToJSON EncryptionAtRestProperty where
  toJSON EncryptionAtRestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogEncryptionMode"
                 Prelude.<$> catalogEncryptionMode,
               (JSON..=) "SseAwsKmsKeyId" Prelude.<$> sseAwsKmsKeyId]))
instance Property "CatalogEncryptionMode" EncryptionAtRestProperty where
  type PropertyType "CatalogEncryptionMode" EncryptionAtRestProperty = Value Prelude.Text
  set newValue EncryptionAtRestProperty {..}
    = EncryptionAtRestProperty
        {catalogEncryptionMode = Prelude.pure newValue, ..}
instance Property "SseAwsKmsKeyId" EncryptionAtRestProperty where
  type PropertyType "SseAwsKmsKeyId" EncryptionAtRestProperty = Value Prelude.Text
  set newValue EncryptionAtRestProperty {..}
    = EncryptionAtRestProperty
        {sseAwsKmsKeyId = Prelude.pure newValue, ..}