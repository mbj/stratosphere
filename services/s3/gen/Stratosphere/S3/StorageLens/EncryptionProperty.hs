module Stratosphere.S3.StorageLens.EncryptionProperty (
        module Exports, EncryptionProperty(..), mkEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.SSEKMSProperty as Exports
import Stratosphere.ResourceProperties
data EncryptionProperty
  = EncryptionProperty {sSEKMS :: (Prelude.Maybe SSEKMSProperty),
                        sSES3 :: (Prelude.Maybe JSON.Object)}
mkEncryptionProperty :: EncryptionProperty
mkEncryptionProperty
  = EncryptionProperty
      {sSEKMS = Prelude.Nothing, sSES3 = Prelude.Nothing}
instance ToResourceProperties EncryptionProperty where
  toResourceProperties EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.Encryption",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SSEKMS" Prelude.<$> sSEKMS,
                            (JSON..=) "SSES3" Prelude.<$> sSES3])}
instance JSON.ToJSON EncryptionProperty where
  toJSON EncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SSEKMS" Prelude.<$> sSEKMS,
               (JSON..=) "SSES3" Prelude.<$> sSES3]))
instance Property "SSEKMS" EncryptionProperty where
  type PropertyType "SSEKMS" EncryptionProperty = SSEKMSProperty
  set newValue EncryptionProperty {..}
    = EncryptionProperty {sSEKMS = Prelude.pure newValue, ..}
instance Property "SSES3" EncryptionProperty where
  type PropertyType "SSES3" EncryptionProperty = JSON.Object
  set newValue EncryptionProperty {..}
    = EncryptionProperty {sSES3 = Prelude.pure newValue, ..}