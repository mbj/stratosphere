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
  = RoutingConfigurationVersionProperty {stateMachineVersionArn :: (Value Prelude.Text),
                                         weight :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingConfigurationVersionProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> RoutingConfigurationVersionProperty
mkRoutingConfigurationVersionProperty stateMachineVersionArn weight
  = RoutingConfigurationVersionProperty
      {stateMachineVersionArn = stateMachineVersionArn, weight = weight}
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