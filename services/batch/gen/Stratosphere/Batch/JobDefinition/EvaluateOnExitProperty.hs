module Stratosphere.Batch.JobDefinition.EvaluateOnExitProperty (
        EvaluateOnExitProperty(..), mkEvaluateOnExitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluateOnExitProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-evaluateonexit.html>
    EvaluateOnExitProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-evaluateonexit.html#cfn-batch-jobdefinition-evaluateonexit-action>
                            action :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-evaluateonexit.html#cfn-batch-jobdefinition-evaluateonexit-onexitcode>
                            onExitCode :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-evaluateonexit.html#cfn-batch-jobdefinition-evaluateonexit-onreason>
                            onReason :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-evaluateonexit.html#cfn-batch-jobdefinition-evaluateonexit-onstatusreason>
                            onStatusReason :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluateOnExitProperty ::
  Value Prelude.Text -> EvaluateOnExitProperty
mkEvaluateOnExitProperty action
  = EvaluateOnExitProperty
      {haddock_workaround_ = (), action = action,
       onExitCode = Prelude.Nothing, onReason = Prelude.Nothing,
       onStatusReason = Prelude.Nothing}
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