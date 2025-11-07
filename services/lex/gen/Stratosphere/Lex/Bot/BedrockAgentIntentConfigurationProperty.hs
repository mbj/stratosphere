module Stratosphere.Lex.Bot.BedrockAgentIntentConfigurationProperty (
        module Exports, BedrockAgentIntentConfigurationProperty(..),
        mkBedrockAgentIntentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockAgentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockAgentIntentKnowledgeBaseConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BedrockAgentIntentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentconfiguration.html>
    BedrockAgentIntentConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentconfiguration.html#cfn-lex-bot-bedrockagentintentconfiguration-bedrockagentconfiguration>
                                             bedrockAgentConfiguration :: (Prelude.Maybe BedrockAgentConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentconfiguration.html#cfn-lex-bot-bedrockagentintentconfiguration-bedrockagentintentknowledgebaseconfiguration>
                                             bedrockAgentIntentKnowledgeBaseConfiguration :: (Prelude.Maybe BedrockAgentIntentKnowledgeBaseConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockAgentIntentConfigurationProperty ::
  BedrockAgentIntentConfigurationProperty
mkBedrockAgentIntentConfigurationProperty
  = BedrockAgentIntentConfigurationProperty
      {haddock_workaround_ = (),
       bedrockAgentConfiguration = Prelude.Nothing,
       bedrockAgentIntentKnowledgeBaseConfiguration = Prelude.Nothing}
instance ToResourceProperties BedrockAgentIntentConfigurationProperty where
  toResourceProperties BedrockAgentIntentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BedrockAgentIntentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BedrockAgentConfiguration"
                              Prelude.<$> bedrockAgentConfiguration,
                            (JSON..=) "BedrockAgentIntentKnowledgeBaseConfiguration"
                              Prelude.<$> bedrockAgentIntentKnowledgeBaseConfiguration])}
instance JSON.ToJSON BedrockAgentIntentConfigurationProperty where
  toJSON BedrockAgentIntentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BedrockAgentConfiguration"
                 Prelude.<$> bedrockAgentConfiguration,
               (JSON..=) "BedrockAgentIntentKnowledgeBaseConfiguration"
                 Prelude.<$> bedrockAgentIntentKnowledgeBaseConfiguration]))
instance Property "BedrockAgentConfiguration" BedrockAgentIntentConfigurationProperty where
  type PropertyType "BedrockAgentConfiguration" BedrockAgentIntentConfigurationProperty = BedrockAgentConfigurationProperty
  set newValue BedrockAgentIntentConfigurationProperty {..}
    = BedrockAgentIntentConfigurationProperty
        {bedrockAgentConfiguration = Prelude.pure newValue, ..}
instance Property "BedrockAgentIntentKnowledgeBaseConfiguration" BedrockAgentIntentConfigurationProperty where
  type PropertyType "BedrockAgentIntentKnowledgeBaseConfiguration" BedrockAgentIntentConfigurationProperty = BedrockAgentIntentKnowledgeBaseConfigurationProperty
  set newValue BedrockAgentIntentConfigurationProperty {..}
    = BedrockAgentIntentConfigurationProperty
        {bedrockAgentIntentKnowledgeBaseConfiguration = Prelude.pure
                                                          newValue,
         ..}