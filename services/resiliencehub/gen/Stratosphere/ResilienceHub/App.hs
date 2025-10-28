module Stratosphere.ResilienceHub.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResilienceHub.App.EventSubscriptionProperty as Exports
import {-# SOURCE #-} Stratosphere.ResilienceHub.App.PermissionModelProperty as Exports
import {-# SOURCE #-} Stratosphere.ResilienceHub.App.ResourceMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data App
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html>
    App {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-appassessmentschedule>
         appAssessmentSchedule :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-apptemplatebody>
         appTemplateBody :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-description>
         description :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-eventsubscriptions>
         eventSubscriptions :: (Prelude.Maybe [EventSubscriptionProperty]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-name>
         name :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-permissionmodel>
         permissionModel :: (Prelude.Maybe PermissionModelProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-resiliencypolicyarn>
         resiliencyPolicyArn :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-resourcemappings>
         resourceMappings :: [ResourceMappingProperty],
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-app.html#cfn-resiliencehub-app-tags>
         tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApp ::
  Value Prelude.Text
  -> Value Prelude.Text -> [ResourceMappingProperty] -> App
mkApp appTemplateBody name resourceMappings
  = App
      {haddock_workaround_ = (), appTemplateBody = appTemplateBody,
       name = name, resourceMappings = resourceMappings,
       appAssessmentSchedule = Prelude.Nothing,
       description = Prelude.Nothing,
       eventSubscriptions = Prelude.Nothing,
       permissionModel = Prelude.Nothing,
       resiliencyPolicyArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties App where
  toResourceProperties App {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppTemplateBody" JSON..= appTemplateBody, "Name" JSON..= name,
                            "ResourceMappings" JSON..= resourceMappings]
                           (Prelude.catMaybes
                              [(JSON..=) "AppAssessmentSchedule"
                                 Prelude.<$> appAssessmentSchedule,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventSubscriptions" Prelude.<$> eventSubscriptions,
                               (JSON..=) "PermissionModel" Prelude.<$> permissionModel,
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
                  (JSON..=) "EventSubscriptions" Prelude.<$> eventSubscriptions,
                  (JSON..=) "PermissionModel" Prelude.<$> permissionModel,
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
instance Property "EventSubscriptions" App where
  type PropertyType "EventSubscriptions" App = [EventSubscriptionProperty]
  set newValue App {..}
    = App {eventSubscriptions = Prelude.pure newValue, ..}
instance Property "Name" App where
  type PropertyType "Name" App = Value Prelude.Text
  set newValue App {..} = App {name = newValue, ..}
instance Property "PermissionModel" App where
  type PropertyType "PermissionModel" App = PermissionModelProperty
  set newValue App {..}
    = App {permissionModel = Prelude.pure newValue, ..}
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