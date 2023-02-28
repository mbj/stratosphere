module Stratosphere.IoT.JobTemplate.JobExecutionsRolloutConfigProperty (
        module Exports, JobExecutionsRolloutConfigProperty(..),
        mkJobExecutionsRolloutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.ExponentialRolloutRateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobExecutionsRolloutConfigProperty
  = JobExecutionsRolloutConfigProperty {exponentialRolloutRate :: (Prelude.Maybe ExponentialRolloutRateProperty),
                                        maximumPerMinute :: (Prelude.Maybe (Value Prelude.Integer))}
mkJobExecutionsRolloutConfigProperty ::
  JobExecutionsRolloutConfigProperty
mkJobExecutionsRolloutConfigProperty
  = JobExecutionsRolloutConfigProperty
      {exponentialRolloutRate = Prelude.Nothing,
       maximumPerMinute = Prelude.Nothing}
instance ToResourceProperties JobExecutionsRolloutConfigProperty where
  toResourceProperties JobExecutionsRolloutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.JobExecutionsRolloutConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExponentialRolloutRate"
                              Prelude.<$> exponentialRolloutRate,
                            (JSON..=) "MaximumPerMinute" Prelude.<$> maximumPerMinute])}
instance JSON.ToJSON JobExecutionsRolloutConfigProperty where
  toJSON JobExecutionsRolloutConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExponentialRolloutRate"
                 Prelude.<$> exponentialRolloutRate,
               (JSON..=) "MaximumPerMinute" Prelude.<$> maximumPerMinute]))
instance Property "ExponentialRolloutRate" JobExecutionsRolloutConfigProperty where
  type PropertyType "ExponentialRolloutRate" JobExecutionsRolloutConfigProperty = ExponentialRolloutRateProperty
  set newValue JobExecutionsRolloutConfigProperty {..}
    = JobExecutionsRolloutConfigProperty
        {exponentialRolloutRate = Prelude.pure newValue, ..}
instance Property "MaximumPerMinute" JobExecutionsRolloutConfigProperty where
  type PropertyType "MaximumPerMinute" JobExecutionsRolloutConfigProperty = Value Prelude.Integer
  set newValue JobExecutionsRolloutConfigProperty {..}
    = JobExecutionsRolloutConfigProperty
        {maximumPerMinute = Prelude.pure newValue, ..}