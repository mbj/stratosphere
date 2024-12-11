module Stratosphere.Bedrock.Flow.LexFlowNodeConfigurationProperty (
        LexFlowNodeConfigurationProperty(..),
        mkLexFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LexFlowNodeConfigurationProperty
  = LexFlowNodeConfigurationProperty {botAliasArn :: (Value Prelude.Text),
                                      localeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLexFlowNodeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LexFlowNodeConfigurationProperty
mkLexFlowNodeConfigurationProperty botAliasArn localeId
  = LexFlowNodeConfigurationProperty
      {botAliasArn = botAliasArn, localeId = localeId}
instance ToResourceProperties LexFlowNodeConfigurationProperty where
  toResourceProperties LexFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.LexFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["BotAliasArn" JSON..= botAliasArn,
                       "LocaleId" JSON..= localeId]}
instance JSON.ToJSON LexFlowNodeConfigurationProperty where
  toJSON LexFlowNodeConfigurationProperty {..}
    = JSON.object
        ["BotAliasArn" JSON..= botAliasArn, "LocaleId" JSON..= localeId]
instance Property "BotAliasArn" LexFlowNodeConfigurationProperty where
  type PropertyType "BotAliasArn" LexFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue LexFlowNodeConfigurationProperty {..}
    = LexFlowNodeConfigurationProperty {botAliasArn = newValue, ..}
instance Property "LocaleId" LexFlowNodeConfigurationProperty where
  type PropertyType "LocaleId" LexFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue LexFlowNodeConfigurationProperty {..}
    = LexFlowNodeConfigurationProperty {localeId = newValue, ..}