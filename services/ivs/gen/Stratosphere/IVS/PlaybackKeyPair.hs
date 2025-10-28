module Stratosphere.IVS.PlaybackKeyPair (
        PlaybackKeyPair(..), mkPlaybackKeyPair
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PlaybackKeyPair
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackkeypair.html>
    PlaybackKeyPair {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackkeypair.html#cfn-ivs-playbackkeypair-name>
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackkeypair.html#cfn-ivs-playbackkeypair-publickeymaterial>
                     publicKeyMaterial :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackkeypair.html#cfn-ivs-playbackkeypair-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlaybackKeyPair :: PlaybackKeyPair
mkPlaybackKeyPair
  = PlaybackKeyPair
      {haddock_workaround_ = (), name = Prelude.Nothing,
       publicKeyMaterial = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PlaybackKeyPair where
  toResourceProperties PlaybackKeyPair {..}
    = ResourceProperties
        {awsType = "AWS::IVS::PlaybackKeyPair",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PublicKeyMaterial" Prelude.<$> publicKeyMaterial,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON PlaybackKeyPair where
  toJSON PlaybackKeyPair {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PublicKeyMaterial" Prelude.<$> publicKeyMaterial,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Name" PlaybackKeyPair where
  type PropertyType "Name" PlaybackKeyPair = Value Prelude.Text
  set newValue PlaybackKeyPair {..}
    = PlaybackKeyPair {name = Prelude.pure newValue, ..}
instance Property "PublicKeyMaterial" PlaybackKeyPair where
  type PropertyType "PublicKeyMaterial" PlaybackKeyPair = Value Prelude.Text
  set newValue PlaybackKeyPair {..}
    = PlaybackKeyPair {publicKeyMaterial = Prelude.pure newValue, ..}
instance Property "Tags" PlaybackKeyPair where
  type PropertyType "Tags" PlaybackKeyPair = [Tag]
  set newValue PlaybackKeyPair {..}
    = PlaybackKeyPair {tags = Prelude.pure newValue, ..}