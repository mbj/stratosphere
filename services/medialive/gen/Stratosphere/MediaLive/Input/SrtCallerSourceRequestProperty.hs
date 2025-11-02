module Stratosphere.MediaLive.Input.SrtCallerSourceRequestProperty (
        module Exports, SrtCallerSourceRequestProperty(..),
        mkSrtCallerSourceRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.SrtCallerDecryptionRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SrtCallerSourceRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-srtcallersourcerequest.html>
    SrtCallerSourceRequestProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-srtcallersourcerequest.html#cfn-medialive-input-srtcallersourcerequest-decryption>
                                    decryption :: (Prelude.Maybe SrtCallerDecryptionRequestProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-srtcallersourcerequest.html#cfn-medialive-input-srtcallersourcerequest-minimumlatency>
                                    minimumLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-srtcallersourcerequest.html#cfn-medialive-input-srtcallersourcerequest-srtlisteneraddress>
                                    srtListenerAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-srtcallersourcerequest.html#cfn-medialive-input-srtcallersourcerequest-srtlistenerport>
                                    srtListenerPort :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-srtcallersourcerequest.html#cfn-medialive-input-srtcallersourcerequest-streamid>
                                    streamId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSrtCallerSourceRequestProperty :: SrtCallerSourceRequestProperty
mkSrtCallerSourceRequestProperty
  = SrtCallerSourceRequestProperty
      {haddock_workaround_ = (), decryption = Prelude.Nothing,
       minimumLatency = Prelude.Nothing,
       srtListenerAddress = Prelude.Nothing,
       srtListenerPort = Prelude.Nothing, streamId = Prelude.Nothing}
instance ToResourceProperties SrtCallerSourceRequestProperty where
  toResourceProperties SrtCallerSourceRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.SrtCallerSourceRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Decryption" Prelude.<$> decryption,
                            (JSON..=) "MinimumLatency" Prelude.<$> minimumLatency,
                            (JSON..=) "SrtListenerAddress" Prelude.<$> srtListenerAddress,
                            (JSON..=) "SrtListenerPort" Prelude.<$> srtListenerPort,
                            (JSON..=) "StreamId" Prelude.<$> streamId])}
instance JSON.ToJSON SrtCallerSourceRequestProperty where
  toJSON SrtCallerSourceRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Decryption" Prelude.<$> decryption,
               (JSON..=) "MinimumLatency" Prelude.<$> minimumLatency,
               (JSON..=) "SrtListenerAddress" Prelude.<$> srtListenerAddress,
               (JSON..=) "SrtListenerPort" Prelude.<$> srtListenerPort,
               (JSON..=) "StreamId" Prelude.<$> streamId]))
instance Property "Decryption" SrtCallerSourceRequestProperty where
  type PropertyType "Decryption" SrtCallerSourceRequestProperty = SrtCallerDecryptionRequestProperty
  set newValue SrtCallerSourceRequestProperty {..}
    = SrtCallerSourceRequestProperty
        {decryption = Prelude.pure newValue, ..}
instance Property "MinimumLatency" SrtCallerSourceRequestProperty where
  type PropertyType "MinimumLatency" SrtCallerSourceRequestProperty = Value Prelude.Integer
  set newValue SrtCallerSourceRequestProperty {..}
    = SrtCallerSourceRequestProperty
        {minimumLatency = Prelude.pure newValue, ..}
instance Property "SrtListenerAddress" SrtCallerSourceRequestProperty where
  type PropertyType "SrtListenerAddress" SrtCallerSourceRequestProperty = Value Prelude.Text
  set newValue SrtCallerSourceRequestProperty {..}
    = SrtCallerSourceRequestProperty
        {srtListenerAddress = Prelude.pure newValue, ..}
instance Property "SrtListenerPort" SrtCallerSourceRequestProperty where
  type PropertyType "SrtListenerPort" SrtCallerSourceRequestProperty = Value Prelude.Text
  set newValue SrtCallerSourceRequestProperty {..}
    = SrtCallerSourceRequestProperty
        {srtListenerPort = Prelude.pure newValue, ..}
instance Property "StreamId" SrtCallerSourceRequestProperty where
  type PropertyType "StreamId" SrtCallerSourceRequestProperty = Value Prelude.Text
  set newValue SrtCallerSourceRequestProperty {..}
    = SrtCallerSourceRequestProperty
        {streamId = Prelude.pure newValue, ..}