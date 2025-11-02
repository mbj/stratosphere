module Stratosphere.MediaConnect.FlowOutput.MediaStreamOutputConfigurationProperty (
        module Exports, MediaStreamOutputConfigurationProperty(..),
        mkMediaStreamOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowOutput.DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowOutput.EncodingParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaStreamOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-mediastreamoutputconfiguration.html>
    MediaStreamOutputConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-mediastreamoutputconfiguration.html#cfn-mediaconnect-flowoutput-mediastreamoutputconfiguration-destinationconfigurations>
                                            destinationConfigurations :: (Prelude.Maybe [DestinationConfigurationProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-mediastreamoutputconfiguration.html#cfn-mediaconnect-flowoutput-mediastreamoutputconfiguration-encodingname>
                                            encodingName :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-mediastreamoutputconfiguration.html#cfn-mediaconnect-flowoutput-mediastreamoutputconfiguration-encodingparameters>
                                            encodingParameters :: (Prelude.Maybe EncodingParametersProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-mediastreamoutputconfiguration.html#cfn-mediaconnect-flowoutput-mediastreamoutputconfiguration-mediastreamname>
                                            mediaStreamName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaStreamOutputConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MediaStreamOutputConfigurationProperty
mkMediaStreamOutputConfigurationProperty
  encodingName
  mediaStreamName
  = MediaStreamOutputConfigurationProperty
      {haddock_workaround_ = (), encodingName = encodingName,
       mediaStreamName = mediaStreamName,
       destinationConfigurations = Prelude.Nothing,
       encodingParameters = Prelude.Nothing}
instance ToResourceProperties MediaStreamOutputConfigurationProperty where
  toResourceProperties MediaStreamOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput.MediaStreamOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncodingName" JSON..= encodingName,
                            "MediaStreamName" JSON..= mediaStreamName]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationConfigurations"
                                 Prelude.<$> destinationConfigurations,
                               (JSON..=) "EncodingParameters" Prelude.<$> encodingParameters]))}
instance JSON.ToJSON MediaStreamOutputConfigurationProperty where
  toJSON MediaStreamOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncodingName" JSON..= encodingName,
               "MediaStreamName" JSON..= mediaStreamName]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationConfigurations"
                    Prelude.<$> destinationConfigurations,
                  (JSON..=) "EncodingParameters" Prelude.<$> encodingParameters])))
instance Property "DestinationConfigurations" MediaStreamOutputConfigurationProperty where
  type PropertyType "DestinationConfigurations" MediaStreamOutputConfigurationProperty = [DestinationConfigurationProperty]
  set newValue MediaStreamOutputConfigurationProperty {..}
    = MediaStreamOutputConfigurationProperty
        {destinationConfigurations = Prelude.pure newValue, ..}
instance Property "EncodingName" MediaStreamOutputConfigurationProperty where
  type PropertyType "EncodingName" MediaStreamOutputConfigurationProperty = Value Prelude.Text
  set newValue MediaStreamOutputConfigurationProperty {..}
    = MediaStreamOutputConfigurationProperty
        {encodingName = newValue, ..}
instance Property "EncodingParameters" MediaStreamOutputConfigurationProperty where
  type PropertyType "EncodingParameters" MediaStreamOutputConfigurationProperty = EncodingParametersProperty
  set newValue MediaStreamOutputConfigurationProperty {..}
    = MediaStreamOutputConfigurationProperty
        {encodingParameters = Prelude.pure newValue, ..}
instance Property "MediaStreamName" MediaStreamOutputConfigurationProperty where
  type PropertyType "MediaStreamName" MediaStreamOutputConfigurationProperty = Value Prelude.Text
  set newValue MediaStreamOutputConfigurationProperty {..}
    = MediaStreamOutputConfigurationProperty
        {mediaStreamName = newValue, ..}