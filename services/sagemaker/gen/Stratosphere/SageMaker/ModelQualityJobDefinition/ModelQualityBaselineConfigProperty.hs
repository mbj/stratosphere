module Stratosphere.SageMaker.ModelQualityJobDefinition.ModelQualityBaselineConfigProperty (
        module Exports, ModelQualityBaselineConfigProperty(..),
        mkModelQualityBaselineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.ConstraintsResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelQualityBaselineConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualitybaselineconfig.html>
    ModelQualityBaselineConfigProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualitybaselineconfig.html#cfn-sagemaker-modelqualityjobdefinition-modelqualitybaselineconfig-baseliningjobname>
                                        baseliningJobName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualitybaselineconfig.html#cfn-sagemaker-modelqualityjobdefinition-modelqualitybaselineconfig-constraintsresource>
                                        constraintsResource :: (Prelude.Maybe ConstraintsResourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelQualityBaselineConfigProperty ::
  ModelQualityBaselineConfigProperty
mkModelQualityBaselineConfigProperty
  = ModelQualityBaselineConfigProperty
      {haddock_workaround_ = (), baseliningJobName = Prelude.Nothing,
       constraintsResource = Prelude.Nothing}
instance ToResourceProperties ModelQualityBaselineConfigProperty where
  toResourceProperties ModelQualityBaselineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.ModelQualityBaselineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
                            (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource])}
instance JSON.ToJSON ModelQualityBaselineConfigProperty where
  toJSON ModelQualityBaselineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseliningJobName" Prelude.<$> baseliningJobName,
               (JSON..=) "ConstraintsResource" Prelude.<$> constraintsResource]))
instance Property "BaseliningJobName" ModelQualityBaselineConfigProperty where
  type PropertyType "BaseliningJobName" ModelQualityBaselineConfigProperty = Value Prelude.Text
  set newValue ModelQualityBaselineConfigProperty {..}
    = ModelQualityBaselineConfigProperty
        {baseliningJobName = Prelude.pure newValue, ..}
instance Property "ConstraintsResource" ModelQualityBaselineConfigProperty where
  type PropertyType "ConstraintsResource" ModelQualityBaselineConfigProperty = ConstraintsResourceProperty
  set newValue ModelQualityBaselineConfigProperty {..}
    = ModelQualityBaselineConfigProperty
        {constraintsResource = Prelude.pure newValue, ..}