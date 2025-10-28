module Stratosphere.CodePipeline.Webhook (
        module Exports, Webhook(..), mkWebhook
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Webhook.WebhookAuthConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Webhook.WebhookFilterRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Webhook
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html>
    Webhook {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-authentication>
             authentication :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-authenticationconfiguration>
             authenticationConfiguration :: WebhookAuthConfigurationProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-filters>
             filters :: [WebhookFilterRuleProperty],
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-registerwiththirdparty>
             registerWithThirdParty :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetaction>
             targetAction :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetpipeline>
             targetPipeline :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetpipelineversion>
             targetPipelineVersion :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebhook ::
  Value Prelude.Text
  -> WebhookAuthConfigurationProperty
     -> [WebhookFilterRuleProperty]
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Integer -> Webhook
mkWebhook
  authentication
  authenticationConfiguration
  filters
  targetAction
  targetPipeline
  targetPipelineVersion
  = Webhook
      {haddock_workaround_ = (), authentication = authentication,
       authenticationConfiguration = authenticationConfiguration,
       filters = filters, targetAction = targetAction,
       targetPipeline = targetPipeline,
       targetPipelineVersion = targetPipelineVersion,
       name = Prelude.Nothing, registerWithThirdParty = Prelude.Nothing}
instance ToResourceProperties Webhook where
  toResourceProperties Webhook {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Webhook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Authentication" JSON..= authentication,
                            "AuthenticationConfiguration" JSON..= authenticationConfiguration,
                            "Filters" JSON..= filters, "TargetAction" JSON..= targetAction,
                            "TargetPipeline" JSON..= targetPipeline,
                            "TargetPipelineVersion" JSON..= targetPipelineVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RegisterWithThirdParty"
                                 Prelude.<$> registerWithThirdParty]))}
instance JSON.ToJSON Webhook where
  toJSON Webhook {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Authentication" JSON..= authentication,
               "AuthenticationConfiguration" JSON..= authenticationConfiguration,
               "Filters" JSON..= filters, "TargetAction" JSON..= targetAction,
               "TargetPipeline" JSON..= targetPipeline,
               "TargetPipelineVersion" JSON..= targetPipelineVersion]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RegisterWithThirdParty"
                    Prelude.<$> registerWithThirdParty])))
instance Property "Authentication" Webhook where
  type PropertyType "Authentication" Webhook = Value Prelude.Text
  set newValue Webhook {..} = Webhook {authentication = newValue, ..}
instance Property "AuthenticationConfiguration" Webhook where
  type PropertyType "AuthenticationConfiguration" Webhook = WebhookAuthConfigurationProperty
  set newValue Webhook {..}
    = Webhook {authenticationConfiguration = newValue, ..}
instance Property "Filters" Webhook where
  type PropertyType "Filters" Webhook = [WebhookFilterRuleProperty]
  set newValue Webhook {..} = Webhook {filters = newValue, ..}
instance Property "Name" Webhook where
  type PropertyType "Name" Webhook = Value Prelude.Text
  set newValue Webhook {..}
    = Webhook {name = Prelude.pure newValue, ..}
instance Property "RegisterWithThirdParty" Webhook where
  type PropertyType "RegisterWithThirdParty" Webhook = Value Prelude.Bool
  set newValue Webhook {..}
    = Webhook {registerWithThirdParty = Prelude.pure newValue, ..}
instance Property "TargetAction" Webhook where
  type PropertyType "TargetAction" Webhook = Value Prelude.Text
  set newValue Webhook {..} = Webhook {targetAction = newValue, ..}
instance Property "TargetPipeline" Webhook where
  type PropertyType "TargetPipeline" Webhook = Value Prelude.Text
  set newValue Webhook {..} = Webhook {targetPipeline = newValue, ..}
instance Property "TargetPipelineVersion" Webhook where
  type PropertyType "TargetPipelineVersion" Webhook = Value Prelude.Integer
  set newValue Webhook {..}
    = Webhook {targetPipelineVersion = newValue, ..}