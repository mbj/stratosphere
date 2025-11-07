module Stratosphere.Bedrock.KnowledgeBase.KendraKnowledgeBaseConfigurationProperty (
        KendraKnowledgeBaseConfigurationProperty(..),
        mkKendraKnowledgeBaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KendraKnowledgeBaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-kendraknowledgebaseconfiguration.html>
    KendraKnowledgeBaseConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-kendraknowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-kendraknowledgebaseconfiguration-kendraindexarn>
                                              kendraIndexArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKendraKnowledgeBaseConfigurationProperty ::
  Value Prelude.Text -> KendraKnowledgeBaseConfigurationProperty
mkKendraKnowledgeBaseConfigurationProperty kendraIndexArn
  = KendraKnowledgeBaseConfigurationProperty
      {haddock_workaround_ = (), kendraIndexArn = kendraIndexArn}
instance ToResourceProperties KendraKnowledgeBaseConfigurationProperty where
  toResourceProperties KendraKnowledgeBaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.KendraKnowledgeBaseConfiguration",
         supportsTags = Prelude.False,
         properties = ["KendraIndexArn" JSON..= kendraIndexArn]}
instance JSON.ToJSON KendraKnowledgeBaseConfigurationProperty where
  toJSON KendraKnowledgeBaseConfigurationProperty {..}
    = JSON.object ["KendraIndexArn" JSON..= kendraIndexArn]
instance Property "KendraIndexArn" KendraKnowledgeBaseConfigurationProperty where
  type PropertyType "KendraIndexArn" KendraKnowledgeBaseConfigurationProperty = Value Prelude.Text
  set newValue KendraKnowledgeBaseConfigurationProperty {..}
    = KendraKnowledgeBaseConfigurationProperty
        {kendraIndexArn = newValue, ..}