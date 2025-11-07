module Stratosphere.Bedrock.DataAutomationProject.SpeakerLabelingConfigurationProperty (
        SpeakerLabelingConfigurationProperty(..),
        mkSpeakerLabelingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpeakerLabelingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-speakerlabelingconfiguration.html>
    SpeakerLabelingConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-speakerlabelingconfiguration.html#cfn-bedrock-dataautomationproject-speakerlabelingconfiguration-state>
                                          state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpeakerLabelingConfigurationProperty ::
  Value Prelude.Text -> SpeakerLabelingConfigurationProperty
mkSpeakerLabelingConfigurationProperty state
  = SpeakerLabelingConfigurationProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties SpeakerLabelingConfigurationProperty where
  toResourceProperties SpeakerLabelingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.SpeakerLabelingConfiguration",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON SpeakerLabelingConfigurationProperty where
  toJSON SpeakerLabelingConfigurationProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" SpeakerLabelingConfigurationProperty where
  type PropertyType "State" SpeakerLabelingConfigurationProperty = Value Prelude.Text
  set newValue SpeakerLabelingConfigurationProperty {..}
    = SpeakerLabelingConfigurationProperty {state = newValue, ..}