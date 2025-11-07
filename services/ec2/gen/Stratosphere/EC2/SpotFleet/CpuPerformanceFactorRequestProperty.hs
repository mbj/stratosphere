module Stratosphere.EC2.SpotFleet.CpuPerformanceFactorRequestProperty (
        module Exports, CpuPerformanceFactorRequestProperty(..),
        mkCpuPerformanceFactorRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.PerformanceFactorReferenceRequestProperty as Exports
import Stratosphere.ResourceProperties
data CpuPerformanceFactorRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-cpuperformancefactorrequest.html>
    CpuPerformanceFactorRequestProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-cpuperformancefactorrequest.html#cfn-ec2-spotfleet-cpuperformancefactorrequest-references>
                                         references :: (Prelude.Maybe [PerformanceFactorReferenceRequestProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCpuPerformanceFactorRequestProperty ::
  CpuPerformanceFactorRequestProperty
mkCpuPerformanceFactorRequestProperty
  = CpuPerformanceFactorRequestProperty
      {haddock_workaround_ = (), references = Prelude.Nothing}
instance ToResourceProperties CpuPerformanceFactorRequestProperty where
  toResourceProperties CpuPerformanceFactorRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.CpuPerformanceFactorRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "References" Prelude.<$> references])}
instance JSON.ToJSON CpuPerformanceFactorRequestProperty where
  toJSON CpuPerformanceFactorRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "References" Prelude.<$> references]))
instance Property "References" CpuPerformanceFactorRequestProperty where
  type PropertyType "References" CpuPerformanceFactorRequestProperty = [PerformanceFactorReferenceRequestProperty]
  set newValue CpuPerformanceFactorRequestProperty {..}
    = CpuPerformanceFactorRequestProperty
        {references = Prelude.pure newValue, ..}