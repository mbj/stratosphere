module Stratosphere.MediaTailor.PlaybackConfiguration.AdConditioningConfigurationProperty (
        AdConditioningConfigurationProperty(..),
        mkAdConditioningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdConditioningConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adconditioningconfiguration.html>
    AdConditioningConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adconditioningconfiguration.html#cfn-mediatailor-playbackconfiguration-adconditioningconfiguration-streamingmediafileconditioning>
                                         streamingMediaFileConditioning :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdConditioningConfigurationProperty ::
  Value Prelude.Text -> AdConditioningConfigurationProperty
mkAdConditioningConfigurationProperty
  streamingMediaFileConditioning
  = AdConditioningConfigurationProperty
      {haddock_workaround_ = (),
       streamingMediaFileConditioning = streamingMediaFileConditioning}
instance ToResourceProperties AdConditioningConfigurationProperty where
  toResourceProperties AdConditioningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.AdConditioningConfiguration",
         supportsTags = Prelude.False,
         properties = ["StreamingMediaFileConditioning"
                         JSON..= streamingMediaFileConditioning]}
instance JSON.ToJSON AdConditioningConfigurationProperty where
  toJSON AdConditioningConfigurationProperty {..}
    = JSON.object
        ["StreamingMediaFileConditioning"
           JSON..= streamingMediaFileConditioning]
instance Property "StreamingMediaFileConditioning" AdConditioningConfigurationProperty where
  type PropertyType "StreamingMediaFileConditioning" AdConditioningConfigurationProperty = Value Prelude.Text
  set newValue AdConditioningConfigurationProperty {..}
    = AdConditioningConfigurationProperty
        {streamingMediaFileConditioning = newValue, ..}