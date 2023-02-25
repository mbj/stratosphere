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
  = Webhook {authentication :: (Value Prelude.Text),
             authenticationConfiguration :: WebhookAuthConfigurationProperty,
             filters :: [WebhookFilterRuleProperty],
             name :: (Prelude.Maybe (Value Prelude.Text)),
             registerWithThirdParty :: (Prelude.Maybe (Value Prelude.Bool)),
             targetAction :: (Value Prelude.Text),
             targetPipeline :: (Value Prelude.Text),
             targetPipelineVersion :: (Value Prelude.Integer)}
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
      {authentication = authentication,
       authenticationConfiguration = authenticationConfiguration,
       filters = filters, targetAction = targetAction,
       targetPipeline = targetPipeline,
       targetPipelineVersion = targetPipelineVersion,
       name = Prelude.Nothing, registerWithThirdParty = Prelude.Nothing}
instance ToResourceProperties Webhook where
  toResourceProperties Webhook {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Webhook",
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