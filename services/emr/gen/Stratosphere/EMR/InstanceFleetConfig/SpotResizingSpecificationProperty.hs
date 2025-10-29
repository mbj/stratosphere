module Stratosphere.EMR.InstanceFleetConfig.SpotResizingSpecificationProperty (
        SpotResizingSpecificationProperty(..),
        mkSpotResizingSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotResizingSpecificationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotresizingspecification.html>
    SpotResizingSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotresizingspecification.html#cfn-elasticmapreduce-instancefleetconfig-spotresizingspecification-allocationstrategy>
                                       allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-spotresizingspecification.html#cfn-elasticmapreduce-instancefleetconfig-spotresizingspecification-timeoutdurationminutes>
                                       timeoutDurationMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotResizingSpecificationProperty ::
  SpotResizingSpecificationProperty
mkSpotResizingSpecificationProperty
  = SpotResizingSpecificationProperty
      {allocationStrategy = Prelude.Nothing,
       timeoutDurationMinutes = Prelude.Nothing}
instance ToResourceProperties SpotResizingSpecificationProperty where
  toResourceProperties SpotResizingSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.SpotResizingSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                            (JSON..=) "TimeoutDurationMinutes"
                              Prelude.<$> timeoutDurationMinutes])}
instance JSON.ToJSON SpotResizingSpecificationProperty where
  toJSON SpotResizingSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
               (JSON..=) "TimeoutDurationMinutes"
                 Prelude.<$> timeoutDurationMinutes]))
instance Property "AllocationStrategy" SpotResizingSpecificationProperty where
  type PropertyType "AllocationStrategy" SpotResizingSpecificationProperty = Value Prelude.Text
  set newValue SpotResizingSpecificationProperty {..}
    = SpotResizingSpecificationProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "TimeoutDurationMinutes" SpotResizingSpecificationProperty where
  type PropertyType "TimeoutDurationMinutes" SpotResizingSpecificationProperty = Value Prelude.Integer
  set newValue SpotResizingSpecificationProperty {..}
    = SpotResizingSpecificationProperty
        {timeoutDurationMinutes = Prelude.pure newValue, ..}