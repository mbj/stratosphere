module Stratosphere.EC2.SpotFleet.BaselinePerformanceFactorsRequestProperty (
        module Exports, BaselinePerformanceFactorsRequestProperty(..),
        mkBaselinePerformanceFactorsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.CpuPerformanceFactorRequestProperty as Exports
import Stratosphere.ResourceProperties
data BaselinePerformanceFactorsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-baselineperformancefactorsrequest.html>
    BaselinePerformanceFactorsRequestProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-baselineperformancefactorsrequest.html#cfn-ec2-spotfleet-baselineperformancefactorsrequest-cpu>
                                               cpu :: (Prelude.Maybe CpuPerformanceFactorRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBaselinePerformanceFactorsRequestProperty ::
  BaselinePerformanceFactorsRequestProperty
mkBaselinePerformanceFactorsRequestProperty
  = BaselinePerformanceFactorsRequestProperty
      {haddock_workaround_ = (), cpu = Prelude.Nothing}
instance ToResourceProperties BaselinePerformanceFactorsRequestProperty where
  toResourceProperties BaselinePerformanceFactorsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.BaselinePerformanceFactorsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Cpu" Prelude.<$> cpu])}
instance JSON.ToJSON BaselinePerformanceFactorsRequestProperty where
  toJSON BaselinePerformanceFactorsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Cpu" Prelude.<$> cpu]))
instance Property "Cpu" BaselinePerformanceFactorsRequestProperty where
  type PropertyType "Cpu" BaselinePerformanceFactorsRequestProperty = CpuPerformanceFactorRequestProperty
  set newValue BaselinePerformanceFactorsRequestProperty {..}
    = BaselinePerformanceFactorsRequestProperty
        {cpu = Prelude.pure newValue, ..}