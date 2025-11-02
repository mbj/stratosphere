module Stratosphere.StepFunctions.StateMachineAlias.RoutingConfigurationVersionProperty (
        RoutingConfigurationVersionProperty(..),
        mkRoutingConfigurationVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingConfigurationVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-routingconfigurationversion.html>
    RoutingConfigurationVersionProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-routingconfigurationversion.html#cfn-stepfunctions-statemachinealias-routingconfigurationversion-statemachineversionarn>
                                         stateMachineVersionArn :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-routingconfigurationversion.html#cfn-stepfunctions-statemachinealias-routingconfigurationversion-weight>
                                         weight :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingConfigurationVersionProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> RoutingConfigurationVersionProperty
mkRoutingConfigurationVersionProperty stateMachineVersionArn weight
  = RoutingConfigurationVersionProperty
      {haddock_workaround_ = (),
       stateMachineVersionArn = stateMachineVersionArn, weight = weight}
instance ToResourceProperties RoutingConfigurationVersionProperty where
  toResourceProperties RoutingConfigurationVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachineAlias.RoutingConfigurationVersion",
         supportsTags = Prelude.False,
         properties = ["StateMachineVersionArn"
                         JSON..= stateMachineVersionArn,
                       "Weight" JSON..= weight]}
instance JSON.ToJSON RoutingConfigurationVersionProperty where
  toJSON RoutingConfigurationVersionProperty {..}
    = JSON.object
        ["StateMachineVersionArn" JSON..= stateMachineVersionArn,
         "Weight" JSON..= weight]
instance Property "StateMachineVersionArn" RoutingConfigurationVersionProperty where
  type PropertyType "StateMachineVersionArn" RoutingConfigurationVersionProperty = Value Prelude.Text
  set newValue RoutingConfigurationVersionProperty {..}
    = RoutingConfigurationVersionProperty
        {stateMachineVersionArn = newValue, ..}
instance Property "Weight" RoutingConfigurationVersionProperty where
  type PropertyType "Weight" RoutingConfigurationVersionProperty = Value Prelude.Integer
  set newValue RoutingConfigurationVersionProperty {..}
    = RoutingConfigurationVersionProperty {weight = newValue, ..}