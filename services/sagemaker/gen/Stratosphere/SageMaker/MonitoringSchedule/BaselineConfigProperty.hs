module Stratosphere.SageMaker.MonitoringSchedule.BaselineConfigProperty (
        module Exports, BaselineConfigProperty(..),
        mkBaselineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.ConstraintsResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.StatisticsResourceProperty as Exports
import Stratosphere.ResourceProperties
data BaselineConfigProperty
  = BaselineConfigProperty {constraintsResource :: (Prelude.Maybe ConstraintsResourceProperty),
                            statisticsResource :: (Prelude.Maybe StatisticsResourceProperty)}
mkBaselineConfigProperty :: BaselineConfigProperty
mkBaselineConfigProperty
  = BaselineConfigProperty
      {constraintsResource = Prelude.Nothing,
       statisticsResource = Prelude.Nothing}
instance ToResourceProperties BaselineConfigProperty where
  toResourceProperties BaselineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.BaselineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource,
                            (JSON..=) "StatisticsResource" Prelude.<$> statisticsResource])}
instance JSON.ToJSON BaselineConfigProperty where
  toJSON BaselineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource,
               (JSON..=) "StatisticsResource" Prelude.<$> statisticsResource]))
instance Property "ConstraintsResource" BaselineConfigProperty where
  type PropertyType "ConstraintsResource" BaselineConfigProperty = ConstraintsResourceProperty
  set newValue BaselineConfigProperty {..}
    = BaselineConfigProperty
        {constraintsResource = Prelude.pure newValue, ..}
instance Property "StatisticsResource" BaselineConfigProperty where
  type PropertyType "StatisticsResource" BaselineConfigProperty = StatisticsResourceProperty
  set newValue BaselineConfigProperty {..}
    = BaselineConfigProperty
        {statisticsResource = Prelude.pure newValue, ..}