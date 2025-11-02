module Stratosphere.Batch.SchedulingPolicy.FairsharePolicyProperty (
        module Exports, FairsharePolicyProperty(..),
        mkFairsharePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.SchedulingPolicy.ShareAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FairsharePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html>
    FairsharePolicyProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html#cfn-batch-schedulingpolicy-fairsharepolicy-computereservation>
                             computeReservation :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html#cfn-batch-schedulingpolicy-fairsharepolicy-sharedecayseconds>
                             shareDecaySeconds :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html#cfn-batch-schedulingpolicy-fairsharepolicy-sharedistribution>
                             shareDistribution :: (Prelude.Maybe [ShareAttributesProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFairsharePolicyProperty :: FairsharePolicyProperty
mkFairsharePolicyProperty
  = FairsharePolicyProperty
      {haddock_workaround_ = (), computeReservation = Prelude.Nothing,
       shareDecaySeconds = Prelude.Nothing,
       shareDistribution = Prelude.Nothing}
instance ToResourceProperties FairsharePolicyProperty where
  toResourceProperties FairsharePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::SchedulingPolicy.FairsharePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeReservation" Prelude.<$> computeReservation,
                            (JSON..=) "ShareDecaySeconds" Prelude.<$> shareDecaySeconds,
                            (JSON..=) "ShareDistribution" Prelude.<$> shareDistribution])}
instance JSON.ToJSON FairsharePolicyProperty where
  toJSON FairsharePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeReservation" Prelude.<$> computeReservation,
               (JSON..=) "ShareDecaySeconds" Prelude.<$> shareDecaySeconds,
               (JSON..=) "ShareDistribution" Prelude.<$> shareDistribution]))
instance Property "ComputeReservation" FairsharePolicyProperty where
  type PropertyType "ComputeReservation" FairsharePolicyProperty = Value Prelude.Double
  set newValue FairsharePolicyProperty {..}
    = FairsharePolicyProperty
        {computeReservation = Prelude.pure newValue, ..}
instance Property "ShareDecaySeconds" FairsharePolicyProperty where
  type PropertyType "ShareDecaySeconds" FairsharePolicyProperty = Value Prelude.Double
  set newValue FairsharePolicyProperty {..}
    = FairsharePolicyProperty
        {shareDecaySeconds = Prelude.pure newValue, ..}
instance Property "ShareDistribution" FairsharePolicyProperty where
  type PropertyType "ShareDistribution" FairsharePolicyProperty = [ShareAttributesProperty]
  set newValue FairsharePolicyProperty {..}
    = FairsharePolicyProperty
        {shareDistribution = Prelude.pure newValue, ..}