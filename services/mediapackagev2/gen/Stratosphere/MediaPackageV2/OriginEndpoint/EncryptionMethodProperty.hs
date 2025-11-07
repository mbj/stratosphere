module Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionMethodProperty (
        EncryptionMethodProperty(..), mkEncryptionMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionMethodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptionmethod.html>
    EncryptionMethodProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptionmethod.html#cfn-mediapackagev2-originendpoint-encryptionmethod-cmafencryptionmethod>
                              cmafEncryptionMethod :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptionmethod.html#cfn-mediapackagev2-originendpoint-encryptionmethod-ismencryptionmethod>
                              ismEncryptionMethod :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptionmethod.html#cfn-mediapackagev2-originendpoint-encryptionmethod-tsencryptionmethod>
                              tsEncryptionMethod :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionMethodProperty :: EncryptionMethodProperty
mkEncryptionMethodProperty
  = EncryptionMethodProperty
      {haddock_workaround_ = (), cmafEncryptionMethod = Prelude.Nothing,
       ismEncryptionMethod = Prelude.Nothing,
       tsEncryptionMethod = Prelude.Nothing}
instance ToResourceProperties EncryptionMethodProperty where
  toResourceProperties EncryptionMethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.EncryptionMethod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CmafEncryptionMethod" Prelude.<$> cmafEncryptionMethod,
                            (JSON..=) "IsmEncryptionMethod" Prelude.<$> ismEncryptionMethod,
                            (JSON..=) "TsEncryptionMethod" Prelude.<$> tsEncryptionMethod])}
instance JSON.ToJSON EncryptionMethodProperty where
  toJSON EncryptionMethodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CmafEncryptionMethod" Prelude.<$> cmafEncryptionMethod,
               (JSON..=) "IsmEncryptionMethod" Prelude.<$> ismEncryptionMethod,
               (JSON..=) "TsEncryptionMethod" Prelude.<$> tsEncryptionMethod]))
instance Property "CmafEncryptionMethod" EncryptionMethodProperty where
  type PropertyType "CmafEncryptionMethod" EncryptionMethodProperty = Value Prelude.Text
  set newValue EncryptionMethodProperty {..}
    = EncryptionMethodProperty
        {cmafEncryptionMethod = Prelude.pure newValue, ..}
instance Property "IsmEncryptionMethod" EncryptionMethodProperty where
  type PropertyType "IsmEncryptionMethod" EncryptionMethodProperty = Value Prelude.Text
  set newValue EncryptionMethodProperty {..}
    = EncryptionMethodProperty
        {ismEncryptionMethod = Prelude.pure newValue, ..}
instance Property "TsEncryptionMethod" EncryptionMethodProperty where
  type PropertyType "TsEncryptionMethod" EncryptionMethodProperty = Value Prelude.Text
  set newValue EncryptionMethodProperty {..}
    = EncryptionMethodProperty
        {tsEncryptionMethod = Prelude.pure newValue, ..}