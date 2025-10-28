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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html>
    ScalableTarget {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-maxcapacity>
                    maxCapacity :: (Value Prelude.Integer),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-mincapacity>
                    minCapacity :: (Value Prelude.Integer),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-resourceid>
                    resourceId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-rolearn>
                    roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-scalabledimension>
                    scalableDimension :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-scheduledactions>
                    scheduledActions :: (Prelude.Maybe [ScheduledActionProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-servicenamespace>
                    serviceNamespace :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-suspendedstate>
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
      {haddock_workaround_ = (), maxCapacity = maxCapacity,
       minCapacity = minCapacity, resourceId = resourceId,
       scalableDimension = scalableDimension,
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