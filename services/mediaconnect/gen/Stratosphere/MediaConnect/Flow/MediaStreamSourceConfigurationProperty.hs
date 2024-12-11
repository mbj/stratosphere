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
  = MediaStreamSourceConfigurationProperty {encodingName :: (Value Prelude.Text),
                                            inputConfigurations :: (Prelude.Maybe [InputConfigurationProperty]),
                                            mediaStreamName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaStreamSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MediaStreamSourceConfigurationProperty
mkMediaStreamSourceConfigurationProperty
  encodingName
  mediaStreamName
  = MediaStreamSourceConfigurationProperty
      {encodingName = encodingName, mediaStreamName = mediaStreamName,
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