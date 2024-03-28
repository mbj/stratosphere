module Stratosphere.SageMaker.Endpoint.RollingUpdatePolicyProperty (
        module Exports, RollingUpdatePolicyProperty(..),
        mkRollingUpdatePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.CapacitySizeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RollingUpdatePolicyProperty
  = RollingUpdatePolicyProperty {maximumBatchSize :: CapacitySizeProperty,
                                 maximumExecutionTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                 rollbackMaximumBatchSize :: (Prelude.Maybe CapacitySizeProperty),
                                 waitIntervalInSeconds :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRollingUpdatePolicyProperty ::
  CapacitySizeProperty
  -> Value Prelude.Integer -> RollingUpdatePolicyProperty
mkRollingUpdatePolicyProperty
  maximumBatchSize
  waitIntervalInSeconds
  = RollingUpdatePolicyProperty
      {maximumBatchSize = maximumBatchSize,
       waitIntervalInSeconds = waitIntervalInSeconds,
       maximumExecutionTimeoutInSeconds = Prelude.Nothing,
       rollbackMaximumBatchSize = Prelude.Nothing}
instance ToResourceProperties RollingUpdatePolicyProperty where
  toResourceProperties RollingUpdatePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.RollingUpdatePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaximumBatchSize" JSON..= maximumBatchSize,
                            "WaitIntervalInSeconds" JSON..= waitIntervalInSeconds]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumExecutionTimeoutInSeconds"
                                 Prelude.<$> maximumExecutionTimeoutInSeconds,
                               (JSON..=) "RollbackMaximumBatchSize"
                                 Prelude.<$> rollbackMaximumBatchSize]))}
instance JSON.ToJSON RollingUpdatePolicyProperty where
  toJSON RollingUpdatePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaximumBatchSize" JSON..= maximumBatchSize,
               "WaitIntervalInSeconds" JSON..= waitIntervalInSeconds]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumExecutionTimeoutInSeconds"
                    Prelude.<$> maximumExecutionTimeoutInSeconds,
                  (JSON..=) "RollbackMaximumBatchSize"
                    Prelude.<$> rollbackMaximumBatchSize])))
instance Property "MaximumBatchSize" RollingUpdatePolicyProperty where
  type PropertyType "MaximumBatchSize" RollingUpdatePolicyProperty = CapacitySizeProperty
  set newValue RollingUpdatePolicyProperty {..}
    = RollingUpdatePolicyProperty {maximumBatchSize = newValue, ..}
instance Property "MaximumExecutionTimeoutInSeconds" RollingUpdatePolicyProperty where
  type PropertyType "MaximumExecutionTimeoutInSeconds" RollingUpdatePolicyProperty = Value Prelude.Integer
  set newValue RollingUpdatePolicyProperty {..}
    = RollingUpdatePolicyProperty
        {maximumExecutionTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "RollbackMaximumBatchSize" RollingUpdatePolicyProperty where
  type PropertyType "RollbackMaximumBatchSize" RollingUpdatePolicyProperty = CapacitySizeProperty
  set newValue RollingUpdatePolicyProperty {..}
    = RollingUpdatePolicyProperty
        {rollbackMaximumBatchSize = Prelude.pure newValue, ..}
instance Property "WaitIntervalInSeconds" RollingUpdatePolicyProperty where
  type PropertyType "WaitIntervalInSeconds" RollingUpdatePolicyProperty = Value Prelude.Integer
  set newValue RollingUpdatePolicyProperty {..}
    = RollingUpdatePolicyProperty
        {waitIntervalInSeconds = newValue, ..}