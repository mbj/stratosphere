module Stratosphere.Bedrock.Guardrail.TopicsTierConfigProperty (
        TopicsTierConfigProperty(..), mkTopicsTierConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicsTierConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicstierconfig.html>
    TopicsTierConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicstierconfig.html#cfn-bedrock-guardrail-topicstierconfig-tiername>
                              tierName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicsTierConfigProperty ::
  Value Prelude.Text -> TopicsTierConfigProperty
mkTopicsTierConfigProperty tierName
  = TopicsTierConfigProperty
      {haddock_workaround_ = (), tierName = tierName}
instance ToResourceProperties TopicsTierConfigProperty where
  toResourceProperties TopicsTierConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.TopicsTierConfig",
         supportsTags = Prelude.False,
         properties = ["TierName" JSON..= tierName]}
instance JSON.ToJSON TopicsTierConfigProperty where
  toJSON TopicsTierConfigProperty {..}
    = JSON.object ["TierName" JSON..= tierName]
instance Property "TierName" TopicsTierConfigProperty where
  type PropertyType "TierName" TopicsTierConfigProperty = Value Prelude.Text
  set newValue TopicsTierConfigProperty {..}
    = TopicsTierConfigProperty {tierName = newValue, ..}