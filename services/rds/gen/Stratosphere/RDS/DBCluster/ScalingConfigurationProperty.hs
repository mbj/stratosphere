module Stratosphere.RDS.DBCluster.ScalingConfigurationProperty (
        ScalingConfigurationProperty(..), mkScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConfigurationProperty
  = ScalingConfigurationProperty {autoPause :: (Prelude.Maybe (Value Prelude.Bool)),
                                  maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  minCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  secondsBeforeTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                  secondsUntilAutoPause :: (Prelude.Maybe (Value Prelude.Integer)),
                                  timeoutAction :: (Prelude.Maybe (Value Prelude.Text))}
mkScalingConfigurationProperty :: ScalingConfigurationProperty
mkScalingConfigurationProperty
  = ScalingConfigurationProperty
      {autoPause = Prelude.Nothing, maxCapacity = Prelude.Nothing,
       minCapacity = Prelude.Nothing,
       secondsBeforeTimeout = Prelude.Nothing,
       secondsUntilAutoPause = Prelude.Nothing,
       timeoutAction = Prelude.Nothing}
instance ToResourceProperties ScalingConfigurationProperty where
  toResourceProperties ScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.ScalingConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoPause" Prelude.<$> autoPause,
                            (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "MinCapacity" Prelude.<$> minCapacity,
                            (JSON..=) "SecondsBeforeTimeout" Prelude.<$> secondsBeforeTimeout,
                            (JSON..=) "SecondsUntilAutoPause"
                              Prelude.<$> secondsUntilAutoPause,
                            (JSON..=) "TimeoutAction" Prelude.<$> timeoutAction])}
instance JSON.ToJSON ScalingConfigurationProperty where
  toJSON ScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoPause" Prelude.<$> autoPause,
               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "MinCapacity" Prelude.<$> minCapacity,
               (JSON..=) "SecondsBeforeTimeout" Prelude.<$> secondsBeforeTimeout,
               (JSON..=) "SecondsUntilAutoPause"
                 Prelude.<$> secondsUntilAutoPause,
               (JSON..=) "TimeoutAction" Prelude.<$> timeoutAction]))
instance Property "AutoPause" ScalingConfigurationProperty where
  type PropertyType "AutoPause" ScalingConfigurationProperty = Value Prelude.Bool
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {autoPause = Prelude.pure newValue, ..}
instance Property "MaxCapacity" ScalingConfigurationProperty where
  type PropertyType "MaxCapacity" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {maxCapacity = Prelude.pure newValue, ..}
instance Property "MinCapacity" ScalingConfigurationProperty where
  type PropertyType "MinCapacity" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {minCapacity = Prelude.pure newValue, ..}
instance Property "SecondsBeforeTimeout" ScalingConfigurationProperty where
  type PropertyType "SecondsBeforeTimeout" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {secondsBeforeTimeout = Prelude.pure newValue, ..}
instance Property "SecondsUntilAutoPause" ScalingConfigurationProperty where
  type PropertyType "SecondsUntilAutoPause" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {secondsUntilAutoPause = Prelude.pure newValue, ..}
instance Property "TimeoutAction" ScalingConfigurationProperty where
  type PropertyType "TimeoutAction" ScalingConfigurationProperty = Value Prelude.Text
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {timeoutAction = Prelude.pure newValue, ..}