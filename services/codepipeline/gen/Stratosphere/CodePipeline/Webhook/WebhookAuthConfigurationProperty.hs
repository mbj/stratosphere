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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html>
    WebhookAuthConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-allowediprange>
                                      allowedIPRange :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-secrettoken>
                                      secretToken :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebhookAuthConfigurationProperty ::
  WebhookAuthConfigurationProperty
mkWebhookAuthConfigurationProperty
  = WebhookAuthConfigurationProperty
      {allowedIPRange = Prelude.Nothing, secretToken = Prelude.Nothing}
instance ToResourceProperties WebhookAuthConfigurationProperty where
  toResourceProperties WebhookAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Webhook.WebhookAuthConfiguration",
         supportsTags = Prelude.False,
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