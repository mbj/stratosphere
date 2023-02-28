module Stratosphere.Glue.MLTransform.MLUserDataEncryptionProperty (
        MLUserDataEncryptionProperty(..), mkMLUserDataEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MLUserDataEncryptionProperty
  = MLUserDataEncryptionProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  mLUserDataEncryptionMode :: (Value Prelude.Text)}
mkMLUserDataEncryptionProperty ::
  Value Prelude.Text -> MLUserDataEncryptionProperty
mkMLUserDataEncryptionProperty mLUserDataEncryptionMode
  = MLUserDataEncryptionProperty
      {mLUserDataEncryptionMode = mLUserDataEncryptionMode,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties MLUserDataEncryptionProperty where
  toResourceProperties MLUserDataEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.MLUserDataEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MLUserDataEncryptionMode" JSON..= mLUserDataEncryptionMode]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON MLUserDataEncryptionProperty where
  toJSON MLUserDataEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MLUserDataEncryptionMode" JSON..= mLUserDataEncryptionMode]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" MLUserDataEncryptionProperty where
  type PropertyType "KmsKeyId" MLUserDataEncryptionProperty = Value Prelude.Text
  set newValue MLUserDataEncryptionProperty {..}
    = MLUserDataEncryptionProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MLUserDataEncryptionMode" MLUserDataEncryptionProperty where
  type PropertyType "MLUserDataEncryptionMode" MLUserDataEncryptionProperty = Value Prelude.Text
  set newValue MLUserDataEncryptionProperty {..}
    = MLUserDataEncryptionProperty
        {mLUserDataEncryptionMode = newValue, ..}