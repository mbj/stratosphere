module Stratosphere.MediaConnect.Flow.MediaStreamSourceConfigurationProperty (
        module Exports, MediaStreamSourceConfigurationProperty(..),
        mkMediaStreamSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.InputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaStreamSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamsourceconfiguration.html>
    MediaStreamSourceConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamsourceconfiguration.html#cfn-mediaconnect-flow-mediastreamsourceconfiguration-encodingname>
                                            encodingName :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamsourceconfiguration.html#cfn-mediaconnect-flow-mediastreamsourceconfiguration-inputconfigurations>
                                            inputConfigurations :: (Prelude.Maybe [InputConfigurationProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamsourceconfiguration.html#cfn-mediaconnect-flow-mediastreamsourceconfiguration-mediastreamname>
                                            mediaStreamName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaStreamSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MediaStreamSourceConfigurationProperty
mkMediaStreamSourceConfigurationProperty
  encodingName
  mediaStreamName
  = MediaStreamSourceConfigurationProperty
      {haddock_workaround_ = (), encodingName = encodingName,
       mediaStreamName = mediaStreamName,
       inputConfigurations = Prelude.Nothing}
instance ToResourceProperties MediaStreamSourceConfigurationProperty where
  toResourceProperties MediaStreamSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.MediaStreamSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncodingName" JSON..= encodingName,
                            "MediaStreamName" JSON..= mediaStreamName]
                           (Prelude.catMaybes
                              [(JSON..=) "InputConfigurations"
                                 Prelude.<$> inputConfigurations]))}
instance JSON.ToJSON MediaStreamSourceConfigurationProperty where
  toJSON MediaStreamSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncodingName" JSON..= encodingName,
               "MediaStreamName" JSON..= mediaStreamName]
              (Prelude.catMaybes
                 [(JSON..=) "InputConfigurations"
                    Prelude.<$> inputConfigurations])))
instance Property "EncodingName" MediaStreamSourceConfigurationProperty where
  type PropertyType "EncodingName" MediaStreamSourceConfigurationProperty = Value Prelude.Text
  set newValue MediaStreamSourceConfigurationProperty {..}
    = MediaStreamSourceConfigurationProperty
        {encodingName = newValue, ..}
instance Property "InputConfigurations" MediaStreamSourceConfigurationProperty where
  type PropertyType "InputConfigurations" MediaStreamSourceConfigurationProperty = [InputConfigurationProperty]
  set newValue MediaStreamSourceConfigurationProperty {..}
    = MediaStreamSourceConfigurationProperty
        {inputConfigurations = Prelude.pure newValue, ..}
instance Property "MediaStreamName" MediaStreamSourceConfigurationProperty where
  type PropertyType "MediaStreamName" MediaStreamSourceConfigurationProperty = Value Prelude.Text
  set newValue MediaStreamSourceConfigurationProperty {..}
    = MediaStreamSourceConfigurationProperty
        {mediaStreamName = newValue, ..}