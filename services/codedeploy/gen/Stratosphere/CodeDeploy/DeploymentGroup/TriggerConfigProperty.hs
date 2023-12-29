module Stratosphere.CodeDeploy.DeploymentGroup.TriggerConfigProperty (
        TriggerConfigProperty(..), mkTriggerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggerConfigProperty
  = TriggerConfigProperty {triggerEvents :: (Prelude.Maybe (ValueList Prelude.Text)),
                           triggerName :: (Prelude.Maybe (Value Prelude.Text)),
                           triggerTargetArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerConfigProperty :: TriggerConfigProperty
mkTriggerConfigProperty
  = TriggerConfigProperty
      {triggerEvents = Prelude.Nothing, triggerName = Prelude.Nothing,
       triggerTargetArn = Prelude.Nothing}
instance ToResourceProperties TriggerConfigProperty where
  toResourceProperties TriggerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.TriggerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TriggerEvents" Prelude.<$> triggerEvents,
                            (JSON..=) "TriggerName" Prelude.<$> triggerName,
                            (JSON..=) "TriggerTargetArn" Prelude.<$> triggerTargetArn])}
instance JSON.ToJSON TriggerConfigProperty where
  toJSON TriggerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TriggerEvents" Prelude.<$> triggerEvents,
               (JSON..=) "TriggerName" Prelude.<$> triggerName,
               (JSON..=) "TriggerTargetArn" Prelude.<$> triggerTargetArn]))
instance Property "TriggerEvents" TriggerConfigProperty where
  type PropertyType "TriggerEvents" TriggerConfigProperty = ValueList Prelude.Text
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty {triggerEvents = Prelude.pure newValue, ..}
instance Property "TriggerName" TriggerConfigProperty where
  type PropertyType "TriggerName" TriggerConfigProperty = Value Prelude.Text
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty {triggerName = Prelude.pure newValue, ..}
instance Property "TriggerTargetArn" TriggerConfigProperty where
  type PropertyType "TriggerTargetArn" TriggerConfigProperty = Value Prelude.Text
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty
        {triggerTargetArn = Prelude.pure newValue, ..}