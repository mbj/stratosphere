module Stratosphere.EMR.Cluster.SpotProvisioningSpecificationProperty (
        SpotProvisioningSpecificationProperty(..),
        mkSpotProvisioningSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotProvisioningSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html>
    SpotProvisioningSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-allocationstrategy>
                                           allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-blockdurationminutes>
                                           blockDurationMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutaction>
                                           timeoutAction :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutdurationminutes>
                                           timeoutDurationMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotProvisioningSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> SpotProvisioningSpecificationProperty
mkSpotProvisioningSpecificationProperty
  timeoutAction
  timeoutDurationMinutes
  = SpotProvisioningSpecificationProperty
      {haddock_workaround_ = (), timeoutAction = timeoutAction,
       timeoutDurationMinutes = timeoutDurationMinutes,
       allocationStrategy = Prelude.Nothing,
       blockDurationMinutes = Prelude.Nothing}
instance ToResourceProperties SpotProvisioningSpecificationProperty where
  toResourceProperties SpotProvisioningSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.SpotProvisioningSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TimeoutAction" JSON..= timeoutAction,
                            "TimeoutDurationMinutes" JSON..= timeoutDurationMinutes]
                           (Prelude.catMaybes
                              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                               (JSON..=) "BlockDurationMinutes"
                                 Prelude.<$> blockDurationMinutes]))}
instance JSON.ToJSON SpotProvisioningSpecificationProperty where
  toJSON SpotProvisioningSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TimeoutAction" JSON..= timeoutAction,
               "TimeoutDurationMinutes" JSON..= timeoutDurationMinutes]
              (Prelude.catMaybes
                 [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                  (JSON..=) "BlockDurationMinutes"
                    Prelude.<$> blockDurationMinutes])))
instance Property "AllocationStrategy" SpotProvisioningSpecificationProperty where
  type PropertyType "AllocationStrategy" SpotProvisioningSpecificationProperty = Value Prelude.Text
  set newValue SpotProvisioningSpecificationProperty {..}
    = SpotProvisioningSpecificationProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "BlockDurationMinutes" SpotProvisioningSpecificationProperty where
  type PropertyType "BlockDurationMinutes" SpotProvisioningSpecificationProperty = Value Prelude.Integer
  set newValue SpotProvisioningSpecificationProperty {..}
    = SpotProvisioningSpecificationProperty
        {blockDurationMinutes = Prelude.pure newValue, ..}
instance Property "TimeoutAction" SpotProvisioningSpecificationProperty where
  type PropertyType "TimeoutAction" SpotProvisioningSpecificationProperty = Value Prelude.Text
  set newValue SpotProvisioningSpecificationProperty {..}
    = SpotProvisioningSpecificationProperty
        {timeoutAction = newValue, ..}
instance Property "TimeoutDurationMinutes" SpotProvisioningSpecificationProperty where
  type PropertyType "TimeoutDurationMinutes" SpotProvisioningSpecificationProperty = Value Prelude.Integer
  set newValue SpotProvisioningSpecificationProperty {..}
    = SpotProvisioningSpecificationProperty
        {timeoutDurationMinutes = newValue, ..}