module Stratosphere.MediaLive.Multiplex.MultiplexSettingsProperty (
        MultiplexSettingsProperty(..), mkMultiplexSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexsettings.html>
    MultiplexSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexsettings.html#cfn-medialive-multiplex-multiplexsettings-maximumvideobufferdelaymilliseconds>
                               maximumVideoBufferDelayMilliseconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexsettings.html#cfn-medialive-multiplex-multiplexsettings-transportstreambitrate>
                               transportStreamBitrate :: (Value Prelude.Integer),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexsettings.html#cfn-medialive-multiplex-multiplexsettings-transportstreamid>
                               transportStreamId :: (Value Prelude.Integer),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexsettings.html#cfn-medialive-multiplex-multiplexsettings-transportstreamreservedbitrate>
                               transportStreamReservedBitrate :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> MultiplexSettingsProperty
mkMultiplexSettingsProperty
  transportStreamBitrate
  transportStreamId
  = MultiplexSettingsProperty
      {haddock_workaround_ = (),
       transportStreamBitrate = transportStreamBitrate,
       transportStreamId = transportStreamId,
       maximumVideoBufferDelayMilliseconds = Prelude.Nothing,
       transportStreamReservedBitrate = Prelude.Nothing}
instance ToResourceProperties MultiplexSettingsProperty where
  toResourceProperties MultiplexSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplex.MultiplexSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TransportStreamBitrate" JSON..= transportStreamBitrate,
                            "TransportStreamId" JSON..= transportStreamId]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumVideoBufferDelayMilliseconds"
                                 Prelude.<$> maximumVideoBufferDelayMilliseconds,
                               (JSON..=) "TransportStreamReservedBitrate"
                                 Prelude.<$> transportStreamReservedBitrate]))}
instance JSON.ToJSON MultiplexSettingsProperty where
  toJSON MultiplexSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TransportStreamBitrate" JSON..= transportStreamBitrate,
               "TransportStreamId" JSON..= transportStreamId]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumVideoBufferDelayMilliseconds"
                    Prelude.<$> maximumVideoBufferDelayMilliseconds,
                  (JSON..=) "TransportStreamReservedBitrate"
                    Prelude.<$> transportStreamReservedBitrate])))
instance Property "MaximumVideoBufferDelayMilliseconds" MultiplexSettingsProperty where
  type PropertyType "MaximumVideoBufferDelayMilliseconds" MultiplexSettingsProperty = Value Prelude.Integer
  set newValue MultiplexSettingsProperty {..}
    = MultiplexSettingsProperty
        {maximumVideoBufferDelayMilliseconds = Prelude.pure newValue, ..}
instance Property "TransportStreamBitrate" MultiplexSettingsProperty where
  type PropertyType "TransportStreamBitrate" MultiplexSettingsProperty = Value Prelude.Integer
  set newValue MultiplexSettingsProperty {..}
    = MultiplexSettingsProperty {transportStreamBitrate = newValue, ..}
instance Property "TransportStreamId" MultiplexSettingsProperty where
  type PropertyType "TransportStreamId" MultiplexSettingsProperty = Value Prelude.Integer
  set newValue MultiplexSettingsProperty {..}
    = MultiplexSettingsProperty {transportStreamId = newValue, ..}
instance Property "TransportStreamReservedBitrate" MultiplexSettingsProperty where
  type PropertyType "TransportStreamReservedBitrate" MultiplexSettingsProperty = Value Prelude.Integer
  set newValue MultiplexSettingsProperty {..}
    = MultiplexSettingsProperty
        {transportStreamReservedBitrate = Prelude.pure newValue, ..}