module Stratosphere.Batch.JobDefinition.EvaluateOnExitProperty (
        EvaluateOnExitProperty(..), mkEvaluateOnExitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluateOnExitProperty
  = EvaluateOnExitProperty {action :: (Value Prelude.Text),
                            onExitCode :: (Prelude.Maybe (Value Prelude.Text)),
                            onReason :: (Prelude.Maybe (Value Prelude.Text)),
                            onStatusReason :: (Prelude.Maybe (Value Prelude.Text))}
mkEvaluateOnExitProperty ::
  Value Prelude.Text -> EvaluateOnExitProperty
mkEvaluateOnExitProperty action
  = EvaluateOnExitProperty
      {action = action, onExitCode = Prelude.Nothing,
       onReason = Prelude.Nothing, onStatusReason = Prelude.Nothing}
instance ToResourceProperties EvaluateOnExitProperty where
  toResourceProperties EvaluateOnExitProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EvaluateOnExit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action]
                           (Prelude.catMaybes
                              [(JSON..=) "OnExitCode" Prelude.<$> onExitCode,
                               (JSON..=) "OnReason" Prelude.<$> onReason,
                               (JSON..=) "OnStatusReason" Prelude.<$> onStatusReason]))}
instance JSON.ToJSON EvaluateOnExitProperty where
  toJSON EvaluateOnExitProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action]
              (Prelude.catMaybes
                 [(JSON..=) "OnExitCode" Prelude.<$> onExitCode,
                  (JSON..=) "OnReason" Prelude.<$> onReason,
                  (JSON..=) "OnStatusReason" Prelude.<$> onStatusReason])))
instance Property "Action" EvaluateOnExitProperty where
  type PropertyType "Action" EvaluateOnExitProperty = Value Prelude.Text
  set newValue EvaluateOnExitProperty {..}
    = EvaluateOnExitProperty {action = newValue, ..}
instance Property "OnExitCode" EvaluateOnExitProperty where
  type PropertyType "OnExitCode" EvaluateOnExitProperty = Value Prelude.Text
  set newValue EvaluateOnExitProperty {..}
    = EvaluateOnExitProperty {onExitCode = Prelude.pure newValue, ..}
instance Property "OnReason" EvaluateOnExitProperty where
  type PropertyType "OnReason" EvaluateOnExitProperty = Value Prelude.Text
  set newValue EvaluateOnExitProperty {..}
    = EvaluateOnExitProperty {onReason = Prelude.pure newValue, ..}
instance Property "OnStatusReason" EvaluateOnExitProperty where
  type PropertyType "OnStatusReason" EvaluateOnExitProperty = Value Prelude.Text
  set newValue EvaluateOnExitProperty {..}
    = EvaluateOnExitProperty
        {onStatusReason = Prelude.pure newValue, ..}