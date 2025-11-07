module Stratosphere.ECS.Service.CanaryConfigurationProperty (
        CanaryConfigurationProperty(..), mkCanaryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CanaryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-canaryconfiguration.html>
    CanaryConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-canaryconfiguration.html#cfn-ecs-service-canaryconfiguration-canarybaketimeinminutes>
                                 canaryBakeTimeInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-canaryconfiguration.html#cfn-ecs-service-canaryconfiguration-canarypercent>
                                 canaryPercent :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCanaryConfigurationProperty :: CanaryConfigurationProperty
mkCanaryConfigurationProperty
  = CanaryConfigurationProperty
      {haddock_workaround_ = (),
       canaryBakeTimeInMinutes = Prelude.Nothing,
       canaryPercent = Prelude.Nothing}
instance ToResourceProperties CanaryConfigurationProperty where
  toResourceProperties CanaryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.CanaryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CanaryBakeTimeInMinutes"
                              Prelude.<$> canaryBakeTimeInMinutes,
                            (JSON..=) "CanaryPercent" Prelude.<$> canaryPercent])}
instance JSON.ToJSON CanaryConfigurationProperty where
  toJSON CanaryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CanaryBakeTimeInMinutes"
                 Prelude.<$> canaryBakeTimeInMinutes,
               (JSON..=) "CanaryPercent" Prelude.<$> canaryPercent]))
instance Property "CanaryBakeTimeInMinutes" CanaryConfigurationProperty where
  type PropertyType "CanaryBakeTimeInMinutes" CanaryConfigurationProperty = Value Prelude.Integer
  set newValue CanaryConfigurationProperty {..}
    = CanaryConfigurationProperty
        {canaryBakeTimeInMinutes = Prelude.pure newValue, ..}
instance Property "CanaryPercent" CanaryConfigurationProperty where
  type PropertyType "CanaryPercent" CanaryConfigurationProperty = Value Prelude.Double
  set newValue CanaryConfigurationProperty {..}
    = CanaryConfigurationProperty
        {canaryPercent = Prelude.pure newValue, ..}