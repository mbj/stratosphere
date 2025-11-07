module Stratosphere.Bedrock.DataAutomationProject.ChannelLabelingConfigurationProperty (
        ChannelLabelingConfigurationProperty(..),
        mkChannelLabelingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelLabelingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-channellabelingconfiguration.html>
    ChannelLabelingConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-channellabelingconfiguration.html#cfn-bedrock-dataautomationproject-channellabelingconfiguration-state>
                                          state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelLabelingConfigurationProperty ::
  Value Prelude.Text -> ChannelLabelingConfigurationProperty
mkChannelLabelingConfigurationProperty state
  = ChannelLabelingConfigurationProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties ChannelLabelingConfigurationProperty where
  toResourceProperties ChannelLabelingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ChannelLabelingConfiguration",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON ChannelLabelingConfigurationProperty where
  toJSON ChannelLabelingConfigurationProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" ChannelLabelingConfigurationProperty where
  type PropertyType "State" ChannelLabelingConfigurationProperty = Value Prelude.Text
  set newValue ChannelLabelingConfigurationProperty {..}
    = ChannelLabelingConfigurationProperty {state = newValue, ..}