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
  = ResponsePlan {actions :: (Prelude.Maybe [ActionProperty]),
                  chatChannel :: (Prelude.Maybe ChatChannelProperty),
                  displayName :: (Prelude.Maybe (Value Prelude.Text)),
                  engagements :: (Prelude.Maybe (ValueList Prelude.Text)),
                  incidentTemplate :: IncidentTemplateProperty,
                  integrations :: (Prelude.Maybe [IntegrationProperty]),
                  name :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponsePlan ::
  IncidentTemplateProperty -> Value Prelude.Text -> ResponsePlan
mkResponsePlan incidentTemplate name
  = ResponsePlan
      {incidentTemplate = incidentTemplate, name = name,
       actions = Prelude.Nothing, chatChannel = Prelude.Nothing,
       displayName = Prelude.Nothing, engagements = Prelude.Nothing,
       integrations = Prelude.Nothing, tags = Prelude.Nothing}
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