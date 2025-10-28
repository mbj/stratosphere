module Stratosphere.IoT.TopicRule.StepFunctionsActionProperty (
        StepFunctionsActionProperty(..), mkStepFunctionsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepFunctionsActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html>
    StepFunctionsActionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-executionnameprefix>
                                 executionNamePrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-rolearn>
                                 roleArn :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-statemachinename>
                                 stateMachineName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepFunctionsActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> StepFunctionsActionProperty
mkStepFunctionsActionProperty roleArn stateMachineName
  = StepFunctionsActionProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       stateMachineName = stateMachineName,
       executionNamePrefix = Prelude.Nothing}
instance ToResourceProperties StepFunctionsActionProperty where
  toResourceProperties StepFunctionsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.StepFunctionsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn,
                            "StateMachineName" JSON..= stateMachineName]
                           (Prelude.catMaybes
                              [(JSON..=) "ExecutionNamePrefix"
                                 Prelude.<$> executionNamePrefix]))}
instance JSON.ToJSON StepFunctionsActionProperty where
  toJSON StepFunctionsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn,
               "StateMachineName" JSON..= stateMachineName]
              (Prelude.catMaybes
                 [(JSON..=) "ExecutionNamePrefix"
                    Prelude.<$> executionNamePrefix])))
instance Property "ExecutionNamePrefix" StepFunctionsActionProperty where
  type PropertyType "ExecutionNamePrefix" StepFunctionsActionProperty = Value Prelude.Text
  set newValue StepFunctionsActionProperty {..}
    = StepFunctionsActionProperty
        {executionNamePrefix = Prelude.pure newValue, ..}
instance Property "RoleArn" StepFunctionsActionProperty where
  type PropertyType "RoleArn" StepFunctionsActionProperty = Value Prelude.Text
  set newValue StepFunctionsActionProperty {..}
    = StepFunctionsActionProperty {roleArn = newValue, ..}
instance Property "StateMachineName" StepFunctionsActionProperty where
  type PropertyType "StateMachineName" StepFunctionsActionProperty = Value Prelude.Text
  set newValue StepFunctionsActionProperty {..}
    = StepFunctionsActionProperty {stateMachineName = newValue, ..}