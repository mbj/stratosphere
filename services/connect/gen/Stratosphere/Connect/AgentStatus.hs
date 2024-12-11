module Stratosphere.Connect.AgentStatus (
        AgentStatus(..), mkAgentStatus
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AgentStatus
  = AgentStatus {description :: (Prelude.Maybe (Value Prelude.Text)),
                 displayOrder :: (Prelude.Maybe (Value Prelude.Integer)),
                 instanceArn :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 resetOrderNumber :: (Prelude.Maybe (Value Prelude.Bool)),
                 state :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag]),
                 type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentStatus ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AgentStatus
mkAgentStatus instanceArn name state
  = AgentStatus
      {instanceArn = instanceArn, name = name, state = state,
       description = Prelude.Nothing, displayOrder = Prelude.Nothing,
       resetOrderNumber = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties AgentStatus where
  toResourceProperties AgentStatus {..}
    = ResourceProperties
        {awsType = "AWS::Connect::AgentStatus",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
                            "State" JSON..= state]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayOrder" Prelude.<$> displayOrder,
                               (JSON..=) "ResetOrderNumber" Prelude.<$> resetOrderNumber,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON AgentStatus where
  toJSON AgentStatus {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
               "State" JSON..= state]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayOrder" Prelude.<$> displayOrder,
                  (JSON..=) "ResetOrderNumber" Prelude.<$> resetOrderNumber,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Description" AgentStatus where
  type PropertyType "Description" AgentStatus = Value Prelude.Text
  set newValue AgentStatus {..}
    = AgentStatus {description = Prelude.pure newValue, ..}
instance Property "DisplayOrder" AgentStatus where
  type PropertyType "DisplayOrder" AgentStatus = Value Prelude.Integer
  set newValue AgentStatus {..}
    = AgentStatus {displayOrder = Prelude.pure newValue, ..}
instance Property "InstanceArn" AgentStatus where
  type PropertyType "InstanceArn" AgentStatus = Value Prelude.Text
  set newValue AgentStatus {..}
    = AgentStatus {instanceArn = newValue, ..}
instance Property "Name" AgentStatus where
  type PropertyType "Name" AgentStatus = Value Prelude.Text
  set newValue AgentStatus {..} = AgentStatus {name = newValue, ..}
instance Property "ResetOrderNumber" AgentStatus where
  type PropertyType "ResetOrderNumber" AgentStatus = Value Prelude.Bool
  set newValue AgentStatus {..}
    = AgentStatus {resetOrderNumber = Prelude.pure newValue, ..}
instance Property "State" AgentStatus where
  type PropertyType "State" AgentStatus = Value Prelude.Text
  set newValue AgentStatus {..} = AgentStatus {state = newValue, ..}
instance Property "Tags" AgentStatus where
  type PropertyType "Tags" AgentStatus = [Tag]
  set newValue AgentStatus {..}
    = AgentStatus {tags = Prelude.pure newValue, ..}
instance Property "Type" AgentStatus where
  type PropertyType "Type" AgentStatus = Value Prelude.Text
  set newValue AgentStatus {..}
    = AgentStatus {type' = Prelude.pure newValue, ..}