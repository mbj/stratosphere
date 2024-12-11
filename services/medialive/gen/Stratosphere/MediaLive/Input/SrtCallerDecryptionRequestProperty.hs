module Stratosphere.MediaLive.Input.SrtCallerDecryptionRequestProperty (
        SrtCallerDecryptionRequestProperty(..),
        mkSrtCallerDecryptionRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SrtCallerDecryptionRequestProperty
  = SrtCallerDecryptionRequestProperty {algorithm :: (Prelude.Maybe (Value Prelude.Text)),
                                        passphraseSecretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSrtCallerDecryptionRequestProperty ::
  SrtCallerDecryptionRequestProperty
mkSrtCallerDecryptionRequestProperty
  = SrtCallerDecryptionRequestProperty
      {algorithm = Prelude.Nothing,
       passphraseSecretArn = Prelude.Nothing}
instance ToResourceProperties SrtCallerDecryptionRequestProperty where
  toResourceProperties SrtCallerDecryptionRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.SrtCallerDecryptionRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                            (JSON..=) "PassphraseSecretArn" Prelude.<$> passphraseSecretArn])}
instance JSON.ToJSON SrtCallerDecryptionRequestProperty where
  toJSON SrtCallerDecryptionRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Algorithm" Prelude.<$> algorithm,
               (JSON..=) "PassphraseSecretArn" Prelude.<$> passphraseSecretArn]))
instance Property "Algorithm" SrtCallerDecryptionRequestProperty where
  type PropertyType "Algorithm" SrtCallerDecryptionRequestProperty = Value Prelude.Text
  set newValue SrtCallerDecryptionRequestProperty {..}
    = SrtCallerDecryptionRequestProperty
        {algorithm = Prelude.pure newValue, ..}
instance Property "PassphraseSecretArn" SrtCallerDecryptionRequestProperty where
  type PropertyType "PassphraseSecretArn" SrtCallerDecryptionRequestProperty = Value Prelude.Text
  set newValue SrtCallerDecryptionRequestProperty {..}
    = SrtCallerDecryptionRequestProperty
        {passphraseSecretArn = Prelude.pure newValue, ..}