module Stratosphere.SageMaker.Cluster.RollingUpdatePolicyProperty (
        module Exports, RollingUpdatePolicyProperty(..),
        mkRollingUpdatePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.CapacitySizeConfigProperty as Exports
import Stratosphere.ResourceProperties
data RollingUpdatePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-rollingupdatepolicy.html>
    RollingUpdatePolicyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-rollingupdatepolicy.html#cfn-sagemaker-cluster-rollingupdatepolicy-maximumbatchsize>
                                 maximumBatchSize :: CapacitySizeConfigProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-rollingupdatepolicy.html#cfn-sagemaker-cluster-rollingupdatepolicy-rollbackmaximumbatchsize>
                                 rollbackMaximumBatchSize :: (Prelude.Maybe CapacitySizeConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRollingUpdatePolicyProperty ::
  CapacitySizeConfigProperty -> RollingUpdatePolicyProperty
mkRollingUpdatePolicyProperty maximumBatchSize
  = RollingUpdatePolicyProperty
      {haddock_workaround_ = (), maximumBatchSize = maximumBatchSize,
       rollbackMaximumBatchSize = Prelude.Nothing}
instance ToResourceProperties RollingUpdatePolicyProperty where
  toResourceProperties RollingUpdatePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.RollingUpdatePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaximumBatchSize" JSON..= maximumBatchSize]
                           (Prelude.catMaybes
                              [(JSON..=) "RollbackMaximumBatchSize"
                                 Prelude.<$> rollbackMaximumBatchSize]))}
instance JSON.ToJSON RollingUpdatePolicyProperty where
  toJSON RollingUpdatePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaximumBatchSize" JSON..= maximumBatchSize]
              (Prelude.catMaybes
                 [(JSON..=) "RollbackMaximumBatchSize"
                    Prelude.<$> rollbackMaximumBatchSize])))
instance Property "MaximumBatchSize" RollingUpdatePolicyProperty where
  type PropertyType "MaximumBatchSize" RollingUpdatePolicyProperty = CapacitySizeConfigProperty
  set newValue RollingUpdatePolicyProperty {..}
    = RollingUpdatePolicyProperty {maximumBatchSize = newValue, ..}
instance Property "RollbackMaximumBatchSize" RollingUpdatePolicyProperty where
  type PropertyType "RollbackMaximumBatchSize" RollingUpdatePolicyProperty = CapacitySizeConfigProperty
  set newValue RollingUpdatePolicyProperty {..}
    = RollingUpdatePolicyProperty
        {rollbackMaximumBatchSize = Prelude.pure newValue, ..}