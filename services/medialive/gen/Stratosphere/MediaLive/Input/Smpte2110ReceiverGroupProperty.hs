module Stratosphere.MediaLive.Input.Smpte2110ReceiverGroupProperty (
        module Exports, Smpte2110ReceiverGroupProperty(..),
        mkSmpte2110ReceiverGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.Smpte2110ReceiverGroupSdpSettingsProperty as Exports
import Stratosphere.ResourceProperties
data Smpte2110ReceiverGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroup.html>
    Smpte2110ReceiverGroupProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroup.html#cfn-medialive-input-smpte2110receivergroup-sdpsettings>
                                    sdpSettings :: (Prelude.Maybe Smpte2110ReceiverGroupSdpSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmpte2110ReceiverGroupProperty :: Smpte2110ReceiverGroupProperty
mkSmpte2110ReceiverGroupProperty
  = Smpte2110ReceiverGroupProperty
      {haddock_workaround_ = (), sdpSettings = Prelude.Nothing}
instance ToResourceProperties Smpte2110ReceiverGroupProperty where
  toResourceProperties Smpte2110ReceiverGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.Smpte2110ReceiverGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SdpSettings" Prelude.<$> sdpSettings])}
instance JSON.ToJSON Smpte2110ReceiverGroupProperty where
  toJSON Smpte2110ReceiverGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SdpSettings" Prelude.<$> sdpSettings]))
instance Property "SdpSettings" Smpte2110ReceiverGroupProperty where
  type PropertyType "SdpSettings" Smpte2110ReceiverGroupProperty = Smpte2110ReceiverGroupSdpSettingsProperty
  set newValue Smpte2110ReceiverGroupProperty {..}
    = Smpte2110ReceiverGroupProperty
        {sdpSettings = Prelude.pure newValue, ..}