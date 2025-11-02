module Stratosphere.S3.StorageLens.EncryptionProperty (
        module Exports, EncryptionProperty(..), mkEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.SSEKMSProperty as Exports
import Stratosphere.ResourceProperties
data EncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-encryption.html>
    EncryptionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-encryption.html#cfn-s3-storagelens-encryption-ssekms>
                        sSEKMS :: (Prelude.Maybe SSEKMSProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-encryption.html#cfn-s3-storagelens-encryption-sses3>
                        sSES3 :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionProperty :: EncryptionProperty
mkEncryptionProperty
  = EncryptionProperty
      {haddock_workaround_ = (), sSEKMS = Prelude.Nothing,
       sSES3 = Prelude.Nothing}
instance ToResourceProperties EncryptionProperty where
  toResourceProperties EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.Encryption",
         supportsTags = Prelude.False,
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