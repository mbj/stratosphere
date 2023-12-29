module Stratosphere.SageMaker.DataQualityJobDefinition.DataQualityBaselineConfigProperty (
        module Exports, DataQualityBaselineConfigProperty(..),
        mkDataQualityBaselineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.ConstraintsResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.StatisticsResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataQualityBaselineConfigProperty
  = DataQualityBaselineConfigProperty {baseliningJobName :: (Prelude.Maybe (Value Prelude.Text)),
                                       constraintsResource :: (Prelude.Maybe ConstraintsResourceProperty),
                                       statisticsResource :: (Prelude.Maybe StatisticsResourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataQualityBaselineConfigProperty ::
  DataQualityBaselineConfigProperty
mkDataQualityBaselineConfigProperty
  = DataQualityBaselineConfigProperty
      {baseliningJobName = Prelude.Nothing,
       constraintsResource = Prelude.Nothing,
       statisticsResource = Prelude.Nothing}
instance ToResourceProperties DataQualityBaselineConfigProperty where
  toResourceProperties DataQualityBaselineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.DataQualityBaselineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
                            (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource,
                            (JSON..=) "StatisticsResource" Prelude.<$> statisticsResource])}
instance JSON.ToJSON DataQualityBaselineConfigProperty where
  toJSON DataQualityBaselineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
               (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource,
               (JSON..=) "StatisticsResource" Prelude.<$> statisticsResource]))
instance Property "BaseliningJobName" DataQualityBaselineConfigProperty where
  type PropertyType "BaseliningJobName" DataQualityBaselineConfigProperty = Value Prelude.Text
  set newValue DataQualityBaselineConfigProperty {..}
    = DataQualityBaselineConfigProperty
        {baseliningJobName = Prelude.pure newValue, ..}
instance Property "ConstraintsResource" DataQualityBaselineConfigProperty where
  type PropertyType "ConstraintsResource" DataQualityBaselineConfigProperty = ConstraintsResourceProperty
  set newValue DataQualityBaselineConfigProperty {..}
    = DataQualityBaselineConfigProperty
        {constraintsResource = Prelude.pure newValue, ..}
instance Property "StatisticsResource" DataQualityBaselineConfigProperty where
  type PropertyType "StatisticsResource" DataQualityBaselineConfigProperty = StatisticsResourceProperty
  set newValue DataQualityBaselineConfigProperty {..}
    = DataQualityBaselineConfigProperty
        {statisticsResource = Prelude.pure newValue, ..}