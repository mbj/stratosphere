module Stratosphere.Connect.Rule.ActionsProperty (
        module Exports, ActionsProperty(..), mkActionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.EventBridgeActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.SendNotificationActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.TaskActionProperty as Exports
import Stratosphere.ResourceProperties
data ActionsProperty
  = ActionsProperty {assignContactCategoryActions :: (Prelude.Maybe JSON.Object),
                     eventBridgeActions :: (Prelude.Maybe [EventBridgeActionProperty]),
                     sendNotificationActions :: (Prelude.Maybe [SendNotificationActionProperty]),
                     taskActions :: (Prelude.Maybe [TaskActionProperty])}
mkActionsProperty :: ActionsProperty
mkActionsProperty
  = ActionsProperty
      {assignContactCategoryActions = Prelude.Nothing,
       eventBridgeActions = Prelude.Nothing,
       sendNotificationActions = Prelude.Nothing,
       taskActions = Prelude.Nothing}
instance ToResourceProperties ActionsProperty where
  toResourceProperties ActionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.Actions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssignContactCategoryActions"
                              Prelude.<$> assignContactCategoryActions,
                            (JSON..=) "EventBridgeActions" Prelude.<$> eventBridgeActions,
                            (JSON..=) "SendNotificationActions"
                              Prelude.<$> sendNotificationActions,
                            (JSON..=) "TaskActions" Prelude.<$> taskActions])}
instance JSON.ToJSON ActionsProperty where
  toJSON ActionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssignContactCategoryActions"
                 Prelude.<$> assignContactCategoryActions,
               (JSON..=) "EventBridgeActions" Prelude.<$> eventBridgeActions,
               (JSON..=) "SendNotificationActions"
                 Prelude.<$> sendNotificationActions,
               (JSON..=) "TaskActions" Prelude.<$> taskActions]))
instance Property "AssignContactCategoryActions" ActionsProperty where
  type PropertyType "AssignContactCategoryActions" ActionsProperty = JSON.Object
  set newValue ActionsProperty {..}
    = ActionsProperty
        {assignContactCategoryActions = Prelude.pure newValue, ..}
instance Property "EventBridgeActions" ActionsProperty where
  type PropertyType "EventBridgeActions" ActionsProperty = [EventBridgeActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty {eventBridgeActions = Prelude.pure newValue, ..}
instance Property "SendNotificationActions" ActionsProperty where
  type PropertyType "SendNotificationActions" ActionsProperty = [SendNotificationActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty
        {sendNotificationActions = Prelude.pure newValue, ..}
instance Property "TaskActions" ActionsProperty where
  type PropertyType "TaskActions" ActionsProperty = [TaskActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty {taskActions = Prelude.pure newValue, ..}