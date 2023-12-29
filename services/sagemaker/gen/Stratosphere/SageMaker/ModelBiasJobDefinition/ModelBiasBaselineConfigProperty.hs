module Stratosphere.SageMaker.ModelBiasJobDefinition.ModelBiasBaselineConfigProperty (
        module Exports, ModelBiasBaselineConfigProperty(..),
        mkModelBiasBaselineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.ConstraintsResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelBiasBaselineConfigProperty
  = ModelBiasBaselineConfigProperty {baseliningJobName :: (Prelude.Maybe (Value Prelude.Text)),
                                     constraintsResource :: (Prelude.Maybe ConstraintsResourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelBiasBaselineConfigProperty ::
  ModelBiasBaselineConfigProperty
mkModelBiasBaselineConfigProperty
  = ModelBiasBaselineConfigProperty
      {baseliningJobName = Prelude.Nothing,
       constraintsResource = Prelude.Nothing}
instance ToResourceProperties ModelBiasBaselineConfigProperty where
  toResourceProperties ModelBiasBaselineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.ModelBiasBaselineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
                            (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource])}
instance JSON.ToJSON ModelBiasBaselineConfigProperty where
  toJSON ModelBiasBaselineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
               (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource]))
instance Property "BaseliningJobName" ModelBiasBaselineConfigProperty where
  type PropertyType "BaseliningJobName" ModelBiasBaselineConfigProperty = Value Prelude.Text
  set newValue ModelBiasBaselineConfigProperty {..}
    = ModelBiasBaselineConfigProperty
        {baseliningJobName = Prelude.pure newValue, ..}
instance Property "ConstraintsResource" ModelBiasBaselineConfigProperty where
  type PropertyType "ConstraintsResource" ModelBiasBaselineConfigProperty = ConstraintsResourceProperty
  set newValue ModelBiasBaselineConfigProperty {..}
    = ModelBiasBaselineConfigProperty
        {constraintsResource = Prelude.pure newValue, ..}