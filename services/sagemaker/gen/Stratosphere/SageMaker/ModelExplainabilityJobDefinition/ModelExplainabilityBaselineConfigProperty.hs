module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityBaselineConfigProperty (
        module Exports, ModelExplainabilityBaselineConfigProperty(..),
        mkModelExplainabilityBaselineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ConstraintsResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelExplainabilityBaselineConfigProperty
  = ModelExplainabilityBaselineConfigProperty {baseliningJobName :: (Prelude.Maybe (Value Prelude.Text)),
                                               constraintsResource :: (Prelude.Maybe ConstraintsResourceProperty)}
mkModelExplainabilityBaselineConfigProperty ::
  ModelExplainabilityBaselineConfigProperty
mkModelExplainabilityBaselineConfigProperty
  = ModelExplainabilityBaselineConfigProperty
      {baseliningJobName = Prelude.Nothing,
       constraintsResource = Prelude.Nothing}
instance ToResourceProperties ModelExplainabilityBaselineConfigProperty where
  toResourceProperties ModelExplainabilityBaselineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.ModelExplainabilityBaselineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
                            (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource])}
instance JSON.ToJSON ModelExplainabilityBaselineConfigProperty where
  toJSON ModelExplainabilityBaselineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
               (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource]))
instance Property "BaseliningJobName" ModelExplainabilityBaselineConfigProperty where
  type PropertyType "BaseliningJobName" ModelExplainabilityBaselineConfigProperty = Value Prelude.Text
  set newValue ModelExplainabilityBaselineConfigProperty {..}
    = ModelExplainabilityBaselineConfigProperty
        {baseliningJobName = Prelude.pure newValue, ..}
instance Property "ConstraintsResource" ModelExplainabilityBaselineConfigProperty where
  type PropertyType "ConstraintsResource" ModelExplainabilityBaselineConfigProperty = ConstraintsResourceProperty
  set newValue ModelExplainabilityBaselineConfigProperty {..}
    = ModelExplainabilityBaselineConfigProperty
        {constraintsResource = Prelude.pure newValue, ..}