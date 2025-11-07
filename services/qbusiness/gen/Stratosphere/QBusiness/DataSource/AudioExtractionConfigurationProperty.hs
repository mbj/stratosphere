module Stratosphere.QBusiness.DataSource.AudioExtractionConfigurationProperty (
        AudioExtractionConfigurationProperty(..),
        mkAudioExtractionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioExtractionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-audioextractionconfiguration.html>
    AudioExtractionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-audioextractionconfiguration.html#cfn-qbusiness-datasource-audioextractionconfiguration-audioextractionstatus>
                                          audioExtractionStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioExtractionConfigurationProperty ::
  Value Prelude.Text -> AudioExtractionConfigurationProperty
mkAudioExtractionConfigurationProperty audioExtractionStatus
  = AudioExtractionConfigurationProperty
      {haddock_workaround_ = (),
       audioExtractionStatus = audioExtractionStatus}
instance ToResourceProperties AudioExtractionConfigurationProperty where
  toResourceProperties AudioExtractionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.AudioExtractionConfiguration",
         supportsTags = Prelude.False,
         properties = ["AudioExtractionStatus"
                         JSON..= audioExtractionStatus]}
instance JSON.ToJSON AudioExtractionConfigurationProperty where
  toJSON AudioExtractionConfigurationProperty {..}
    = JSON.object
        ["AudioExtractionStatus" JSON..= audioExtractionStatus]
instance Property "AudioExtractionStatus" AudioExtractionConfigurationProperty where
  type PropertyType "AudioExtractionStatus" AudioExtractionConfigurationProperty = Value Prelude.Text
  set newValue AudioExtractionConfigurationProperty {..}
    = AudioExtractionConfigurationProperty
        {audioExtractionStatus = newValue, ..}