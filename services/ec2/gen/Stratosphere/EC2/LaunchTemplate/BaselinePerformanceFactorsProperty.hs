module Stratosphere.EC2.LaunchTemplate.BaselinePerformanceFactorsProperty (
        module Exports, BaselinePerformanceFactorsProperty(..),
        mkBaselinePerformanceFactorsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.CpuProperty as Exports
import Stratosphere.ResourceProperties
data BaselinePerformanceFactorsProperty
  = BaselinePerformanceFactorsProperty {cpu :: (Prelude.Maybe CpuProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBaselinePerformanceFactorsProperty ::
  BaselinePerformanceFactorsProperty
mkBaselinePerformanceFactorsProperty
  = BaselinePerformanceFactorsProperty {cpu = Prelude.Nothing}
instance ToResourceProperties BaselinePerformanceFactorsProperty where
  toResourceProperties BaselinePerformanceFactorsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.BaselinePerformanceFactors",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Cpu" Prelude.<$> cpu])}
instance JSON.ToJSON BaselinePerformanceFactorsProperty where
  toJSON BaselinePerformanceFactorsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Cpu" Prelude.<$> cpu]))
instance Property "Cpu" BaselinePerformanceFactorsProperty where
  type PropertyType "Cpu" BaselinePerformanceFactorsProperty = CpuProperty
  set newValue BaselinePerformanceFactorsProperty {}
    = BaselinePerformanceFactorsProperty
        {cpu = Prelude.pure newValue, ..}