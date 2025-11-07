module Stratosphere.Lex.Bot.BedrockAgentIntentKnowledgeBaseConfigurationProperty (
        module Exports,
        BedrockAgentIntentKnowledgeBaseConfigurationProperty(..),
        mkBedrockAgentIntentKnowledgeBaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockModelSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockAgentIntentKnowledgeBaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentknowledgebaseconfiguration.html>
    BedrockAgentIntentKnowledgeBaseConfigurationProperty {haddock_workaround_ :: (),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentknowledgebaseconfiguration.html#cfn-lex-bot-bedrockagentintentknowledgebaseconfiguration-bedrockknowledgebasearn>
                                                          bedrockKnowledgeBaseArn :: (Value Prelude.Text),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentknowledgebaseconfiguration.html#cfn-lex-bot-bedrockagentintentknowledgebaseconfiguration-bedrockmodelconfiguration>
                                                          bedrockModelConfiguration :: BedrockModelSpecificationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockAgentIntentKnowledgeBaseConfigurationProperty ::
  Value Prelude.Text
  -> BedrockModelSpecificationProperty
     -> BedrockAgentIntentKnowledgeBaseConfigurationProperty
mkBedrockAgentIntentKnowledgeBaseConfigurationProperty
  bedrockKnowledgeBaseArn
  bedrockModelConfiguration
  = BedrockAgentIntentKnowledgeBaseConfigurationProperty
      {haddock_workaround_ = (),
       bedrockKnowledgeBaseArn = bedrockKnowledgeBaseArn,
       bedrockModelConfiguration = bedrockModelConfiguration}
instance ToResourceProperties BedrockAgentIntentKnowledgeBaseConfigurationProperty where
  toResourceProperties
    BedrockAgentIntentKnowledgeBaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BedrockAgentIntentKnowledgeBaseConfiguration",
         supportsTags = Prelude.False,
         properties = ["BedrockKnowledgeBaseArn"
                         JSON..= bedrockKnowledgeBaseArn,
                       "BedrockModelConfiguration" JSON..= bedrockModelConfiguration]}
instance JSON.ToJSON BedrockAgentIntentKnowledgeBaseConfigurationProperty where
  toJSON BedrockAgentIntentKnowledgeBaseConfigurationProperty {..}
    = JSON.object
        ["BedrockKnowledgeBaseArn" JSON..= bedrockKnowledgeBaseArn,
         "BedrockModelConfiguration" JSON..= bedrockModelConfiguration]
instance Property "BedrockKnowledgeBaseArn" BedrockAgentIntentKnowledgeBaseConfigurationProperty where
  type PropertyType "BedrockKnowledgeBaseArn" BedrockAgentIntentKnowledgeBaseConfigurationProperty = Value Prelude.Text
  set
    newValue
    BedrockAgentIntentKnowledgeBaseConfigurationProperty {..}
    = BedrockAgentIntentKnowledgeBaseConfigurationProperty
        {bedrockKnowledgeBaseArn = newValue, ..}
instance Property "BedrockModelConfiguration" BedrockAgentIntentKnowledgeBaseConfigurationProperty where
  type PropertyType "BedrockModelConfiguration" BedrockAgentIntentKnowledgeBaseConfigurationProperty = BedrockModelSpecificationProperty
  set
    newValue
    BedrockAgentIntentKnowledgeBaseConfigurationProperty {..}
    = BedrockAgentIntentKnowledgeBaseConfigurationProperty
        {bedrockModelConfiguration = newValue, ..}