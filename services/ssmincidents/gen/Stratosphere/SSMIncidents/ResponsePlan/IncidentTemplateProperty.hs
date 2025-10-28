module Stratosphere.SSMIncidents.ResponsePlan.IncidentTemplateProperty (
        module Exports, IncidentTemplateProperty(..),
        mkIncidentTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.NotificationTargetItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IncidentTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html>
    IncidentTemplateProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html#cfn-ssmincidents-responseplan-incidenttemplate-dedupestring>
                              dedupeString :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html#cfn-ssmincidents-responseplan-incidenttemplate-impact>
                              impact :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html#cfn-ssmincidents-responseplan-incidenttemplate-incidenttags>
                              incidentTags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html#cfn-ssmincidents-responseplan-incidenttemplate-notificationtargets>
                              notificationTargets :: (Prelude.Maybe [NotificationTargetItemProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html#cfn-ssmincidents-responseplan-incidenttemplate-summary>
                              summary :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-incidenttemplate.html#cfn-ssmincidents-responseplan-incidenttemplate-title>
                              title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncidentTemplateProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> IncidentTemplateProperty
mkIncidentTemplateProperty impact title
  = IncidentTemplateProperty
      {haddock_workaround_ = (), impact = impact, title = title,
       dedupeString = Prelude.Nothing, incidentTags = Prelude.Nothing,
       notificationTargets = Prelude.Nothing, summary = Prelude.Nothing}
instance ToResourceProperties IncidentTemplateProperty where
  toResourceProperties IncidentTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.IncidentTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Impact" JSON..= impact, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DedupeString" Prelude.<$> dedupeString,
                               (JSON..=) "IncidentTags" Prelude.<$> incidentTags,
                               (JSON..=) "NotificationTargets" Prelude.<$> notificationTargets,
                               (JSON..=) "Summary" Prelude.<$> summary]))}
instance JSON.ToJSON IncidentTemplateProperty where
  toJSON IncidentTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Impact" JSON..= impact, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DedupeString" Prelude.<$> dedupeString,
                  (JSON..=) "IncidentTags" Prelude.<$> incidentTags,
                  (JSON..=) "NotificationTargets" Prelude.<$> notificationTargets,
                  (JSON..=) "Summary" Prelude.<$> summary])))
instance Property "DedupeString" IncidentTemplateProperty where
  type PropertyType "DedupeString" IncidentTemplateProperty = Value Prelude.Text
  set newValue IncidentTemplateProperty {..}
    = IncidentTemplateProperty
        {dedupeString = Prelude.pure newValue, ..}
instance Property "Impact" IncidentTemplateProperty where
  type PropertyType "Impact" IncidentTemplateProperty = Value Prelude.Integer
  set newValue IncidentTemplateProperty {..}
    = IncidentTemplateProperty {impact = newValue, ..}
instance Property "IncidentTags" IncidentTemplateProperty where
  type PropertyType "IncidentTags" IncidentTemplateProperty = [Tag]
  set newValue IncidentTemplateProperty {..}
    = IncidentTemplateProperty
        {incidentTags = Prelude.pure newValue, ..}
instance Property "NotificationTargets" IncidentTemplateProperty where
  type PropertyType "NotificationTargets" IncidentTemplateProperty = [NotificationTargetItemProperty]
  set newValue IncidentTemplateProperty {..}
    = IncidentTemplateProperty
        {notificationTargets = Prelude.pure newValue, ..}
instance Property "Summary" IncidentTemplateProperty where
  type PropertyType "Summary" IncidentTemplateProperty = Value Prelude.Text
  set newValue IncidentTemplateProperty {..}
    = IncidentTemplateProperty {summary = Prelude.pure newValue, ..}
instance Property "Title" IncidentTemplateProperty where
  type PropertyType "Title" IncidentTemplateProperty = Value Prelude.Text
  set newValue IncidentTemplateProperty {..}
    = IncidentTemplateProperty {title = newValue, ..}