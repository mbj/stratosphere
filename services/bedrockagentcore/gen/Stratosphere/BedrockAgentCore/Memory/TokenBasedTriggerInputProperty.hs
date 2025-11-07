module Stratosphere.BedrockAgentCore.Memory.TokenBasedTriggerInputProperty (
        TokenBasedTriggerInputProperty(..),
        mkTokenBasedTriggerInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TokenBasedTriggerInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-tokenbasedtriggerinput.html>
    TokenBasedTriggerInputProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-tokenbasedtriggerinput.html#cfn-bedrockagentcore-memory-tokenbasedtriggerinput-tokencount>
                                    tokenCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTokenBasedTriggerInputProperty :: TokenBasedTriggerInputProperty
mkTokenBasedTriggerInputProperty
  = TokenBasedTriggerInputProperty
      {haddock_workaround_ = (), tokenCount = Prelude.Nothing}
instance ToResourceProperties TokenBasedTriggerInputProperty where
  toResourceProperties TokenBasedTriggerInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.TokenBasedTriggerInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TokenCount" Prelude.<$> tokenCount])}
instance JSON.ToJSON TokenBasedTriggerInputProperty where
  toJSON TokenBasedTriggerInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TokenCount" Prelude.<$> tokenCount]))
instance Property "TokenCount" TokenBasedTriggerInputProperty where
  type PropertyType "TokenCount" TokenBasedTriggerInputProperty = Value Prelude.Integer
  set newValue TokenBasedTriggerInputProperty {..}
    = TokenBasedTriggerInputProperty
        {tokenCount = Prelude.pure newValue, ..}