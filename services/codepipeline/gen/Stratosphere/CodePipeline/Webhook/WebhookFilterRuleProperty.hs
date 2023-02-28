module Stratosphere.CodePipeline.Webhook.WebhookFilterRuleProperty (
        WebhookFilterRuleProperty(..), mkWebhookFilterRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebhookFilterRuleProperty
  = WebhookFilterRuleProperty {jsonPath :: (Value Prelude.Text),
                               matchEquals :: (Prelude.Maybe (Value Prelude.Text))}
mkWebhookFilterRuleProperty ::
  Value Prelude.Text -> WebhookFilterRuleProperty
mkWebhookFilterRuleProperty jsonPath
  = WebhookFilterRuleProperty
      {jsonPath = jsonPath, matchEquals = Prelude.Nothing}
instance ToResourceProperties WebhookFilterRuleProperty where
  toResourceProperties WebhookFilterRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Webhook.WebhookFilterRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JsonPath" JSON..= jsonPath]
                           (Prelude.catMaybes
                              [(JSON..=) "MatchEquals" Prelude.<$> matchEquals]))}
instance JSON.ToJSON WebhookFilterRuleProperty where
  toJSON WebhookFilterRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JsonPath" JSON..= jsonPath]
              (Prelude.catMaybes
                 [(JSON..=) "MatchEquals" Prelude.<$> matchEquals])))
instance Property "JsonPath" WebhookFilterRuleProperty where
  type PropertyType "JsonPath" WebhookFilterRuleProperty = Value Prelude.Text
  set newValue WebhookFilterRuleProperty {..}
    = WebhookFilterRuleProperty {jsonPath = newValue, ..}
instance Property "MatchEquals" WebhookFilterRuleProperty where
  type PropertyType "MatchEquals" WebhookFilterRuleProperty = Value Prelude.Text
  set newValue WebhookFilterRuleProperty {..}
    = WebhookFilterRuleProperty
        {matchEquals = Prelude.pure newValue, ..}