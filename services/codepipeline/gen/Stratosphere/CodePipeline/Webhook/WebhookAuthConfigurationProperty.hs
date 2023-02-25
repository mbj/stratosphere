module Stratosphere.CodePipeline.Webhook.WebhookAuthConfigurationProperty (
        WebhookAuthConfigurationProperty(..),
        mkWebhookAuthConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebhookAuthConfigurationProperty
  = WebhookAuthConfigurationProperty {allowedIPRange :: (Prelude.Maybe (Value Prelude.Text)),
                                      secretToken :: (Prelude.Maybe (Value Prelude.Text))}
mkWebhookAuthConfigurationProperty ::
  WebhookAuthConfigurationProperty
mkWebhookAuthConfigurationProperty
  = WebhookAuthConfigurationProperty
      {allowedIPRange = Prelude.Nothing, secretToken = Prelude.Nothing}
instance ToResourceProperties WebhookAuthConfigurationProperty where
  toResourceProperties WebhookAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Webhook.WebhookAuthConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedIPRange" Prelude.<$> allowedIPRange,
                            (JSON..=) "SecretToken" Prelude.<$> secretToken])}
instance JSON.ToJSON WebhookAuthConfigurationProperty where
  toJSON WebhookAuthConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedIPRange" Prelude.<$> allowedIPRange,
               (JSON..=) "SecretToken" Prelude.<$> secretToken]))
instance Property "AllowedIPRange" WebhookAuthConfigurationProperty where
  type PropertyType "AllowedIPRange" WebhookAuthConfigurationProperty = Value Prelude.Text
  set newValue WebhookAuthConfigurationProperty {..}
    = WebhookAuthConfigurationProperty
        {allowedIPRange = Prelude.pure newValue, ..}
instance Property "SecretToken" WebhookAuthConfigurationProperty where
  type PropertyType "SecretToken" WebhookAuthConfigurationProperty = Value Prelude.Text
  set newValue WebhookAuthConfigurationProperty {..}
    = WebhookAuthConfigurationProperty
        {secretToken = Prelude.pure newValue, ..}