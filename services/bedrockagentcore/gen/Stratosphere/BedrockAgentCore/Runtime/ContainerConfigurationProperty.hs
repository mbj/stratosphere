module Stratosphere.BedrockAgentCore.Runtime.ContainerConfigurationProperty (
        ContainerConfigurationProperty(..),
        mkContainerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-containerconfiguration.html>
    ContainerConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-containerconfiguration.html#cfn-bedrockagentcore-runtime-containerconfiguration-containeruri>
                                    containerUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerConfigurationProperty ::
  Value Prelude.Text -> ContainerConfigurationProperty
mkContainerConfigurationProperty containerUri
  = ContainerConfigurationProperty
      {haddock_workaround_ = (), containerUri = containerUri}
instance ToResourceProperties ContainerConfigurationProperty where
  toResourceProperties ContainerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime.ContainerConfiguration",
         supportsTags = Prelude.False,
         properties = ["ContainerUri" JSON..= containerUri]}
instance JSON.ToJSON ContainerConfigurationProperty where
  toJSON ContainerConfigurationProperty {..}
    = JSON.object ["ContainerUri" JSON..= containerUri]
instance Property "ContainerUri" ContainerConfigurationProperty where
  type PropertyType "ContainerUri" ContainerConfigurationProperty = Value Prelude.Text
  set newValue ContainerConfigurationProperty {..}
    = ContainerConfigurationProperty {containerUri = newValue, ..}