module Stratosphere.ApplicationAutoScaling.ScalableTarget (
        module Exports, ScalableTarget(..), mkScalableTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalableTarget.ScheduledActionProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalableTarget.SuspendedStateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalableTarget
  = ScalableTarget {maxCapacity :: (Value Prelude.Integer),
                    minCapacity :: (Value Prelude.Integer),
                    resourceId :: (Value Prelude.Text),
                    roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                    scalableDimension :: (Value Prelude.Text),
                    scheduledActions :: (Prelude.Maybe [ScheduledActionProperty]),
                    serviceNamespace :: (Value Prelude.Text),
                    suspendedState :: (Prelude.Maybe SuspendedStateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalableTarget ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> ScalableTarget
mkScalableTarget
  maxCapacity
  minCapacity
  resourceId
  scalableDimension
  serviceNamespace
  = ScalableTarget
      {maxCapacity = maxCapacity, minCapacity = minCapacity,
       resourceId = resourceId, scalableDimension = scalableDimension,
       serviceNamespace = serviceNamespace, roleARN = Prelude.Nothing,
       scheduledActions = Prelude.Nothing,
       suspendedState = Prelude.Nothing}
instance ToResourceProperties ScalableTarget where
  toResourceProperties ScalableTarget {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalableTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxCapacity" JSON..= maxCapacity,
                            "MinCapacity" JSON..= minCapacity, "ResourceId" JSON..= resourceId,
                            "ScalableDimension" JSON..= scalableDimension,
                            "ServiceNamespace" JSON..= serviceNamespace]
                           (Prelude.catMaybes
                              [(JSON..=) "RoleARN" Prelude.<$> roleARN,
                               (JSON..=) "ScheduledActions" Prelude.<$> scheduledActions,
                               (JSON..=) "SuspendedState" Prelude.<$> suspendedState]))}
instance JSON.ToJSON ScalableTarget where
  toJSON ScalableTarget {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxCapacity" JSON..= maxCapacity,
               "MinCapacity" JSON..= minCapacity, "ResourceId" JSON..= resourceId,
               "ScalableDimension" JSON..= scalableDimension,
               "ServiceNamespace" JSON..= serviceNamespace]
              (Prelude.catMaybes
                 [(JSON..=) "RoleARN" Prelude.<$> roleARN,
                  (JSON..=) "ScheduledActions" Prelude.<$> scheduledActions,
                  (JSON..=) "SuspendedState" Prelude.<$> suspendedState])))
instance Property "MaxCapacity" ScalableTarget where
  type PropertyType "MaxCapacity" ScalableTarget = Value Prelude.Integer
  set newValue ScalableTarget {..}
    = ScalableTarget {maxCapacity = newValue, ..}
instance Property "MinCapacity" ScalableTarget where
  type PropertyType "MinCapacity" ScalableTarget = Value Prelude.Integer
  set newValue ScalableTarget {..}
    = ScalableTarget {minCapacity = newValue, ..}
instance Property "ResourceId" ScalableTarget where
  type PropertyType "ResourceId" ScalableTarget = Value Prelude.Text
  set newValue ScalableTarget {..}
    = ScalableTarget {resourceId = newValue, ..}
instance Property "RoleARN" ScalableTarget where
  type PropertyType "RoleARN" ScalableTarget = Value Prelude.Text
  set newValue ScalableTarget {..}
    = ScalableTarget {roleARN = Prelude.pure newValue, ..}
instance Property "ScalableDimension" ScalableTarget where
  type PropertyType "ScalableDimension" ScalableTarget = Value Prelude.Text
  set newValue ScalableTarget {..}
    = ScalableTarget {scalableDimension = newValue, ..}
instance Property "ScheduledActions" ScalableTarget where
  type PropertyType "ScheduledActions" ScalableTarget = [ScheduledActionProperty]
  set newValue ScalableTarget {..}
    = ScalableTarget {scheduledActions = Prelude.pure newValue, ..}
instance Property "ServiceNamespace" ScalableTarget where
  type PropertyType "ServiceNamespace" ScalableTarget = Value Prelude.Text
  set newValue ScalableTarget {..}
    = ScalableTarget {serviceNamespace = newValue, ..}
instance Property "SuspendedState" ScalableTarget where
  type PropertyType "SuspendedState" ScalableTarget = SuspendedStateProperty
  set newValue ScalableTarget {..}
    = ScalableTarget {suspendedState = Prelude.pure newValue, ..}