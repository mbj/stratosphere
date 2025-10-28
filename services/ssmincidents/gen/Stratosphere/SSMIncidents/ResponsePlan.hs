module Stratosphere.SSMIncidents.ResponsePlan (
        module Exports, ResponsePlan(..), mkResponsePlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.ChatChannelProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.IncidentTemplateProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.IntegrationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResponsePlan
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html>
    ResponsePlan {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-actions>
                  actions :: (Prelude.Maybe [ActionProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-chatchannel>
                  chatChannel :: (Prelude.Maybe ChatChannelProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-displayname>
                  displayName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-engagements>
                  engagements :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-incidenttemplate>
                  incidentTemplate :: IncidentTemplateProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-integrations>
                  integrations :: (Prelude.Maybe [IntegrationProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmincidents-responseplan.html#cfn-ssmincidents-responseplan-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponsePlan ::
  IncidentTemplateProperty -> Value Prelude.Text -> ResponsePlan
mkResponsePlan incidentTemplate name
  = ResponsePlan
      {haddock_workaround_ = (), incidentTemplate = incidentTemplate,
       name = name, actions = Prelude.Nothing,
       chatChannel = Prelude.Nothing, displayName = Prelude.Nothing,
       engagements = Prelude.Nothing, integrations = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ResponsePlan where
  toResourceProperties ResponsePlan {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IncidentTemplate" JSON..= incidentTemplate, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChatChannel" Prelude.<$> chatChannel,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "Engagements" Prelude.<$> engagements,
                               (JSON..=) "Integrations" Prelude.<$> integrations,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResponsePlan where
  toJSON ResponsePlan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IncidentTemplate" JSON..= incidentTemplate, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChatChannel" Prelude.<$> chatChannel,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Engagements" Prelude.<$> engagements,
                  (JSON..=) "Integrations" Prelude.<$> integrations,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Actions" ResponsePlan where
  type PropertyType "Actions" ResponsePlan = [ActionProperty]
  set newValue ResponsePlan {..}
    = ResponsePlan {actions = Prelude.pure newValue, ..}
instance Property "ChatChannel" ResponsePlan where
  type PropertyType "ChatChannel" ResponsePlan = ChatChannelProperty
  set newValue ResponsePlan {..}
    = ResponsePlan {chatChannel = Prelude.pure newValue, ..}
instance Property "DisplayName" ResponsePlan where
  type PropertyType "DisplayName" ResponsePlan = Value Prelude.Text
  set newValue ResponsePlan {..}
    = ResponsePlan {displayName = Prelude.pure newValue, ..}
instance Property "Engagements" ResponsePlan where
  type PropertyType "Engagements" ResponsePlan = ValueList Prelude.Text
  set newValue ResponsePlan {..}
    = ResponsePlan {engagements = Prelude.pure newValue, ..}
instance Property "IncidentTemplate" ResponsePlan where
  type PropertyType "IncidentTemplate" ResponsePlan = IncidentTemplateProperty
  set newValue ResponsePlan {..}
    = ResponsePlan {incidentTemplate = newValue, ..}
instance Property "Integrations" ResponsePlan where
  type PropertyType "Integrations" ResponsePlan = [IntegrationProperty]
  set newValue ResponsePlan {..}
    = ResponsePlan {integrations = Prelude.pure newValue, ..}
instance Property "Name" ResponsePlan where
  type PropertyType "Name" ResponsePlan = Value Prelude.Text
  set newValue ResponsePlan {..} = ResponsePlan {name = newValue, ..}
instance Property "Tags" ResponsePlan where
  type PropertyType "Tags" ResponsePlan = [Tag]
  set newValue ResponsePlan {..}
    = ResponsePlan {tags = Prelude.pure newValue, ..}