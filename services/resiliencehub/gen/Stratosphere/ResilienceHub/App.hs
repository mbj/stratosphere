module Stratosphere.ResilienceHub.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResilienceHub.App.ResourceMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data App
  = App {appAssessmentSchedule :: (Prelude.Maybe (Value Prelude.Text)),
         appTemplateBody :: (Value Prelude.Text),
         description :: (Prelude.Maybe (Value Prelude.Text)),
         name :: (Value Prelude.Text),
         resiliencyPolicyArn :: (Prelude.Maybe (Value Prelude.Text)),
         resourceMappings :: [ResourceMappingProperty],
         tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkApp ::
  Value Prelude.Text
  -> Value Prelude.Text -> [ResourceMappingProperty] -> App
mkApp appTemplateBody name resourceMappings
  = App
      {appTemplateBody = appTemplateBody, name = name,
       resourceMappings = resourceMappings,
       appAssessmentSchedule = Prelude.Nothing,
       description = Prelude.Nothing,
       resiliencyPolicyArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties App where
  toResourceProperties App {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppTemplateBody" JSON..= appTemplateBody, "Name" JSON..= name,
                            "ResourceMappings" JSON..= resourceMappings]
                           (Prelude.catMaybes
                              [(JSON..=) "AppAssessmentSchedule"
                                 Prelude.<$> appAssessmentSchedule,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ResiliencyPolicyArn" Prelude.<$> resiliencyPolicyArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON App where
  toJSON App {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppTemplateBody" JSON..= appTemplateBody, "Name" JSON..= name,
               "ResourceMappings" JSON..= resourceMappings]
              (Prelude.catMaybes
                 [(JSON..=) "AppAssessmentSchedule"
                    Prelude.<$> appAssessmentSchedule,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ResiliencyPolicyArn" Prelude.<$> resiliencyPolicyArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppAssessmentSchedule" App where
  type PropertyType "AppAssessmentSchedule" App = Value Prelude.Text
  set newValue App {..}
    = App {appAssessmentSchedule = Prelude.pure newValue, ..}
instance Property "AppTemplateBody" App where
  type PropertyType "AppTemplateBody" App = Value Prelude.Text
  set newValue App {..} = App {appTemplateBody = newValue, ..}
instance Property "Description" App where
  type PropertyType "Description" App = Value Prelude.Text
  set newValue App {..}
    = App {description = Prelude.pure newValue, ..}
instance Property "Name" App where
  type PropertyType "Name" App = Value Prelude.Text
  set newValue App {..} = App {name = newValue, ..}
instance Property "ResiliencyPolicyArn" App where
  type PropertyType "ResiliencyPolicyArn" App = Value Prelude.Text
  set newValue App {..}
    = App {resiliencyPolicyArn = Prelude.pure newValue, ..}
instance Property "ResourceMappings" App where
  type PropertyType "ResourceMappings" App = [ResourceMappingProperty]
  set newValue App {..} = App {resourceMappings = newValue, ..}
instance Property "Tags" App where
  type PropertyType "Tags" App = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue App {..} = App {tags = Prelude.pure newValue, ..}