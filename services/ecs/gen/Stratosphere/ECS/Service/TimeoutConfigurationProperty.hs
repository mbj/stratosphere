module Stratosphere.ECS.Service.TimeoutConfigurationProperty (
        TimeoutConfigurationProperty(..), mkTimeoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-timeoutconfiguration.html>
    TimeoutConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-timeoutconfiguration.html#cfn-ecs-service-timeoutconfiguration-idletimeoutseconds>
                                  idleTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-timeoutconfiguration.html#cfn-ecs-service-timeoutconfiguration-perrequesttimeoutseconds>
                                  perRequestTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeoutConfigurationProperty :: TimeoutConfigurationProperty
mkTimeoutConfigurationProperty
  = TimeoutConfigurationProperty
      {haddock_workaround_ = (), idleTimeoutSeconds = Prelude.Nothing,
       perRequestTimeoutSeconds = Prelude.Nothing}
instance ToResourceProperties TimeoutConfigurationProperty where
  toResourceProperties TimeoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.TimeoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleTimeoutSeconds" Prelude.<$> idleTimeoutSeconds,
                            (JSON..=) "PerRequestTimeoutSeconds"
                              Prelude.<$> perRequestTimeoutSeconds])}
instance JSON.ToJSON TimeoutConfigurationProperty where
  toJSON TimeoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleTimeoutSeconds" Prelude.<$> idleTimeoutSeconds,
               (JSON..=) "PerRequestTimeoutSeconds"
                 Prelude.<$> perRequestTimeoutSeconds]))
instance Property "IdleTimeoutSeconds" TimeoutConfigurationProperty where
  type PropertyType "IdleTimeoutSeconds" TimeoutConfigurationProperty = Value Prelude.Integer
  set newValue TimeoutConfigurationProperty {..}
    = TimeoutConfigurationProperty
        {idleTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "PerRequestTimeoutSeconds" TimeoutConfigurationProperty where
  type PropertyType "PerRequestTimeoutSeconds" TimeoutConfigurationProperty = Value Prelude.Integer
  set newValue TimeoutConfigurationProperty {..}
    = TimeoutConfigurationProperty
        {perRequestTimeoutSeconds = Prelude.pure newValue, ..}