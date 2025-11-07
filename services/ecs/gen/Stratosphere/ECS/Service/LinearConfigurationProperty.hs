module Stratosphere.ECS.Service.LinearConfigurationProperty (
        LinearConfigurationProperty(..), mkLinearConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LinearConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-linearconfiguration.html>
    LinearConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-linearconfiguration.html#cfn-ecs-service-linearconfiguration-stepbaketimeinminutes>
                                 stepBakeTimeInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-linearconfiguration.html#cfn-ecs-service-linearconfiguration-steppercent>
                                 stepPercent :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinearConfigurationProperty :: LinearConfigurationProperty
mkLinearConfigurationProperty
  = LinearConfigurationProperty
      {haddock_workaround_ = (), stepBakeTimeInMinutes = Prelude.Nothing,
       stepPercent = Prelude.Nothing}
instance ToResourceProperties LinearConfigurationProperty where
  toResourceProperties LinearConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.LinearConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StepBakeTimeInMinutes"
                              Prelude.<$> stepBakeTimeInMinutes,
                            (JSON..=) "StepPercent" Prelude.<$> stepPercent])}
instance JSON.ToJSON LinearConfigurationProperty where
  toJSON LinearConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StepBakeTimeInMinutes"
                 Prelude.<$> stepBakeTimeInMinutes,
               (JSON..=) "StepPercent" Prelude.<$> stepPercent]))
instance Property "StepBakeTimeInMinutes" LinearConfigurationProperty where
  type PropertyType "StepBakeTimeInMinutes" LinearConfigurationProperty = Value Prelude.Integer
  set newValue LinearConfigurationProperty {..}
    = LinearConfigurationProperty
        {stepBakeTimeInMinutes = Prelude.pure newValue, ..}
instance Property "StepPercent" LinearConfigurationProperty where
  type PropertyType "StepPercent" LinearConfigurationProperty = Value Prelude.Double
  set newValue LinearConfigurationProperty {..}
    = LinearConfigurationProperty
        {stepPercent = Prelude.pure newValue, ..}