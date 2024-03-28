module Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionMethodProperty (
        EncryptionMethodProperty(..), mkEncryptionMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionMethodProperty
  = EncryptionMethodProperty {cmafEncryptionMethod :: (Prelude.Maybe (Value Prelude.Text)),
                              tsEncryptionMethod :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionMethodProperty :: EncryptionMethodProperty
mkEncryptionMethodProperty
  = EncryptionMethodProperty
      {cmafEncryptionMethod = Prelude.Nothing,
       tsEncryptionMethod = Prelude.Nothing}
instance ToResourceProperties EncryptionMethodProperty where
  toResourceProperties EncryptionMethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.EncryptionMethod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CmafEncryptionMethod" Prelude.<$> cmafEncryptionMethod,
                            (JSON..=) "TsEncryptionMethod" Prelude.<$> tsEncryptionMethod])}
instance JSON.ToJSON EncryptionMethodProperty where
  toJSON EncryptionMethodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CmafEncryptionMethod" Prelude.<$> cmafEncryptionMethod,
               (JSON..=) "TsEncryptionMethod" Prelude.<$> tsEncryptionMethod]))
instance Property "CmafEncryptionMethod" EncryptionMethodProperty where
  type PropertyType "CmafEncryptionMethod" EncryptionMethodProperty = Value Prelude.Text
  set newValue EncryptionMethodProperty {..}
    = EncryptionMethodProperty
        {cmafEncryptionMethod = Prelude.pure newValue, ..}
instance Property "TsEncryptionMethod" EncryptionMethodProperty where
  type PropertyType "TsEncryptionMethod" EncryptionMethodProperty = Value Prelude.Text
  set newValue EncryptionMethodProperty {..}
    = EncryptionMethodProperty
        {tsEncryptionMethod = Prelude.pure newValue, ..}