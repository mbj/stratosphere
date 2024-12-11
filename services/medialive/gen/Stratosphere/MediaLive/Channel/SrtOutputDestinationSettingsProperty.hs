module Stratosphere.MediaLive.Channel.SrtOutputDestinationSettingsProperty (
        SrtOutputDestinationSettingsProperty(..),
        mkSrtOutputDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SrtOutputDestinationSettingsProperty
  = SrtOutputDestinationSettingsProperty {encryptionPassphraseSecretArn :: (Prelude.Maybe (Value Prelude.Text)),
                                          streamId :: (Prelude.Maybe (Value Prelude.Text)),
                                          url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSrtOutputDestinationSettingsProperty ::
  SrtOutputDestinationSettingsProperty
mkSrtOutputDestinationSettingsProperty
  = SrtOutputDestinationSettingsProperty
      {encryptionPassphraseSecretArn = Prelude.Nothing,
       streamId = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties SrtOutputDestinationSettingsProperty where
  toResourceProperties SrtOutputDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.SrtOutputDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionPassphraseSecretArn"
                              Prelude.<$> encryptionPassphraseSecretArn,
                            (JSON..=) "StreamId" Prelude.<$> streamId,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON SrtOutputDestinationSettingsProperty where
  toJSON SrtOutputDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionPassphraseSecretArn"
                 Prelude.<$> encryptionPassphraseSecretArn,
               (JSON..=) "StreamId" Prelude.<$> streamId,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "EncryptionPassphraseSecretArn" SrtOutputDestinationSettingsProperty where
  type PropertyType "EncryptionPassphraseSecretArn" SrtOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue SrtOutputDestinationSettingsProperty {..}
    = SrtOutputDestinationSettingsProperty
        {encryptionPassphraseSecretArn = Prelude.pure newValue, ..}
instance Property "StreamId" SrtOutputDestinationSettingsProperty where
  type PropertyType "StreamId" SrtOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue SrtOutputDestinationSettingsProperty {..}
    = SrtOutputDestinationSettingsProperty
        {streamId = Prelude.pure newValue, ..}
instance Property "Url" SrtOutputDestinationSettingsProperty where
  type PropertyType "Url" SrtOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue SrtOutputDestinationSettingsProperty {..}
    = SrtOutputDestinationSettingsProperty
        {url = Prelude.pure newValue, ..}