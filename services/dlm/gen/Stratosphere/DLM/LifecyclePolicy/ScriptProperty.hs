module Stratosphere.DLM.LifecyclePolicy.ScriptProperty (
        ScriptProperty(..), mkScriptProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScriptProperty
  = ScriptProperty {executeOperationOnScriptFailure :: (Prelude.Maybe (Value Prelude.Bool)),
                    executionHandler :: (Prelude.Maybe (Value Prelude.Text)),
                    executionHandlerService :: (Prelude.Maybe (Value Prelude.Text)),
                    executionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                    maximumRetryCount :: (Prelude.Maybe (Value Prelude.Integer)),
                    stages :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScriptProperty :: ScriptProperty
mkScriptProperty
  = ScriptProperty
      {executeOperationOnScriptFailure = Prelude.Nothing,
       executionHandler = Prelude.Nothing,
       executionHandlerService = Prelude.Nothing,
       executionTimeout = Prelude.Nothing,
       maximumRetryCount = Prelude.Nothing, stages = Prelude.Nothing}
instance ToResourceProperties ScriptProperty where
  toResourceProperties ScriptProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.Script",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExecuteOperationOnScriptFailure"
                              Prelude.<$> executeOperationOnScriptFailure,
                            (JSON..=) "ExecutionHandler" Prelude.<$> executionHandler,
                            (JSON..=) "ExecutionHandlerService"
                              Prelude.<$> executionHandlerService,
                            (JSON..=) "ExecutionTimeout" Prelude.<$> executionTimeout,
                            (JSON..=) "MaximumRetryCount" Prelude.<$> maximumRetryCount,
                            (JSON..=) "Stages" Prelude.<$> stages])}
instance JSON.ToJSON ScriptProperty where
  toJSON ScriptProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExecuteOperationOnScriptFailure"
                 Prelude.<$> executeOperationOnScriptFailure,
               (JSON..=) "ExecutionHandler" Prelude.<$> executionHandler,
               (JSON..=) "ExecutionHandlerService"
                 Prelude.<$> executionHandlerService,
               (JSON..=) "ExecutionTimeout" Prelude.<$> executionTimeout,
               (JSON..=) "MaximumRetryCount" Prelude.<$> maximumRetryCount,
               (JSON..=) "Stages" Prelude.<$> stages]))
instance Property "ExecuteOperationOnScriptFailure" ScriptProperty where
  type PropertyType "ExecuteOperationOnScriptFailure" ScriptProperty = Value Prelude.Bool
  set newValue ScriptProperty {..}
    = ScriptProperty
        {executeOperationOnScriptFailure = Prelude.pure newValue, ..}
instance Property "ExecutionHandler" ScriptProperty where
  type PropertyType "ExecutionHandler" ScriptProperty = Value Prelude.Text
  set newValue ScriptProperty {..}
    = ScriptProperty {executionHandler = Prelude.pure newValue, ..}
instance Property "ExecutionHandlerService" ScriptProperty where
  type PropertyType "ExecutionHandlerService" ScriptProperty = Value Prelude.Text
  set newValue ScriptProperty {..}
    = ScriptProperty
        {executionHandlerService = Prelude.pure newValue, ..}
instance Property "ExecutionTimeout" ScriptProperty where
  type PropertyType "ExecutionTimeout" ScriptProperty = Value Prelude.Integer
  set newValue ScriptProperty {..}
    = ScriptProperty {executionTimeout = Prelude.pure newValue, ..}
instance Property "MaximumRetryCount" ScriptProperty where
  type PropertyType "MaximumRetryCount" ScriptProperty = Value Prelude.Integer
  set newValue ScriptProperty {..}
    = ScriptProperty {maximumRetryCount = Prelude.pure newValue, ..}
instance Property "Stages" ScriptProperty where
  type PropertyType "Stages" ScriptProperty = ValueList Prelude.Text
  set newValue ScriptProperty {..}
    = ScriptProperty {stages = Prelude.pure newValue, ..}