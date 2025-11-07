module Stratosphere.Lex.Bot.BedrockAgentConfigurationProperty (
        BedrockAgentConfigurationProperty(..),
        mkBedrockAgentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockAgentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentconfiguration.html>
    BedrockAgentConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentconfiguration.html#cfn-lex-bot-bedrockagentconfiguration-bedrockagentaliasid>
                                       bedrockAgentAliasId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentconfiguration.html#cfn-lex-bot-bedrockagentconfiguration-bedrockagentid>
                                       bedrockAgentId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockAgentConfigurationProperty ::
  BedrockAgentConfigurationProperty
mkBedrockAgentConfigurationProperty
  = BedrockAgentConfigurationProperty
      {haddock_workaround_ = (), bedrockAgentAliasId = Prelude.Nothing,
       bedrockAgentId = Prelude.Nothing}
instance ToResourceProperties BedrockAgentConfigurationProperty where
  toResourceProperties BedrockAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BedrockAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BedrockAgentAliasId" Prelude.<$> bedrockAgentAliasId,
                            (JSON..=) "BedrockAgentId" Prelude.<$> bedrockAgentId])}
instance JSON.ToJSON BedrockAgentConfigurationProperty where
  toJSON BedrockAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BedrockAgentAliasId" Prelude.<$> bedrockAgentAliasId,
               (JSON..=) "BedrockAgentId" Prelude.<$> bedrockAgentId]))
instance Property "BedrockAgentAliasId" BedrockAgentConfigurationProperty where
  type PropertyType "BedrockAgentAliasId" BedrockAgentConfigurationProperty = Value Prelude.Text
  set newValue BedrockAgentConfigurationProperty {..}
    = BedrockAgentConfigurationProperty
        {bedrockAgentAliasId = Prelude.pure newValue, ..}
instance Property "BedrockAgentId" BedrockAgentConfigurationProperty where
  type PropertyType "BedrockAgentId" BedrockAgentConfigurationProperty = Value Prelude.Text
  set newValue BedrockAgentConfigurationProperty {..}
    = BedrockAgentConfigurationProperty
        {bedrockAgentId = Prelude.pure newValue, ..}