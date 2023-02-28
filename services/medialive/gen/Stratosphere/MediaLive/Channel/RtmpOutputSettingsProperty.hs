module Stratosphere.MediaLive.Channel.RtmpOutputSettingsProperty (
        module Exports, RtmpOutputSettingsProperty(..),
        mkRtmpOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RtmpOutputSettingsProperty
  = RtmpOutputSettingsProperty {certificateMode :: (Prelude.Maybe (Value Prelude.Text)),
                                connectionRetryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                destination :: (Prelude.Maybe OutputLocationRefProperty),
                                numRetries :: (Prelude.Maybe (Value Prelude.Integer))}
mkRtmpOutputSettingsProperty :: RtmpOutputSettingsProperty
mkRtmpOutputSettingsProperty
  = RtmpOutputSettingsProperty
      {certificateMode = Prelude.Nothing,
       connectionRetryInterval = Prelude.Nothing,
       destination = Prelude.Nothing, numRetries = Prelude.Nothing}
instance ToResourceProperties RtmpOutputSettingsProperty where
  toResourceProperties RtmpOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RtmpOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateMode" Prelude.<$> certificateMode,
                            (JSON..=) "ConnectionRetryInterval"
                              Prelude.<$> connectionRetryInterval,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "NumRetries" Prelude.<$> numRetries])}
instance JSON.ToJSON RtmpOutputSettingsProperty where
  toJSON RtmpOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateMode" Prelude.<$> certificateMode,
               (JSON..=) "ConnectionRetryInterval"
                 Prelude.<$> connectionRetryInterval,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "NumRetries" Prelude.<$> numRetries]))
instance Property "CertificateMode" RtmpOutputSettingsProperty where
  type PropertyType "CertificateMode" RtmpOutputSettingsProperty = Value Prelude.Text
  set newValue RtmpOutputSettingsProperty {..}
    = RtmpOutputSettingsProperty
        {certificateMode = Prelude.pure newValue, ..}
instance Property "ConnectionRetryInterval" RtmpOutputSettingsProperty where
  type PropertyType "ConnectionRetryInterval" RtmpOutputSettingsProperty = Value Prelude.Integer
  set newValue RtmpOutputSettingsProperty {..}
    = RtmpOutputSettingsProperty
        {connectionRetryInterval = Prelude.pure newValue, ..}
instance Property "Destination" RtmpOutputSettingsProperty where
  type PropertyType "Destination" RtmpOutputSettingsProperty = OutputLocationRefProperty
  set newValue RtmpOutputSettingsProperty {..}
    = RtmpOutputSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "NumRetries" RtmpOutputSettingsProperty where
  type PropertyType "NumRetries" RtmpOutputSettingsProperty = Value Prelude.Integer
  set newValue RtmpOutputSettingsProperty {..}
    = RtmpOutputSettingsProperty
        {numRetries = Prelude.pure newValue, ..}