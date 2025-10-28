module Stratosphere.SageMaker.InferenceComponent.InferenceComponentSpecificationProperty (
        module Exports, InferenceComponentSpecificationProperty(..),
        mkInferenceComponentSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentComputeResourceRequirementsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentContainerSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentStartupParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html>
    InferenceComponentSpecificationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-baseinferencecomponentname>
                                             baseInferenceComponentName :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-computeresourcerequirements>
                                             computeResourceRequirements :: (Prelude.Maybe InferenceComponentComputeResourceRequirementsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-container>
                                             container :: (Prelude.Maybe InferenceComponentContainerSpecificationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-modelname>
                                             modelName :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-startupparameters>
                                             startupParameters :: (Prelude.Maybe InferenceComponentStartupParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentSpecificationProperty ::
  InferenceComponentSpecificationProperty
mkInferenceComponentSpecificationProperty
  = InferenceComponentSpecificationProperty
      {haddock_workaround_ = (),
       baseInferenceComponentName = Prelude.Nothing,
       computeResourceRequirements = Prelude.Nothing,
       container = Prelude.Nothing, modelName = Prelude.Nothing,
       startupParameters = Prelude.Nothing}
instance ToResourceProperties InferenceComponentSpecificationProperty where
  toResourceProperties InferenceComponentSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseInferenceComponentName"
                              Prelude.<$> baseInferenceComponentName,
                            (JSON..=) "ComputeResourceRequirements"
                              Prelude.<$> computeResourceRequirements,
                            (JSON..=) "Container" Prelude.<$> container,
                            (JSON..=) "ModelName" Prelude.<$> modelName,
                            (JSON..=) "StartupParameters" Prelude.<$> startupParameters])}
instance JSON.ToJSON InferenceComponentSpecificationProperty where
  toJSON InferenceComponentSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseInferenceComponentName"
                 Prelude.<$> baseInferenceComponentName,
               (JSON..=) "ComputeResourceRequirements"
                 Prelude.<$> computeResourceRequirements,
               (JSON..=) "Container" Prelude.<$> container,
               (JSON..=) "ModelName" Prelude.<$> modelName,
               (JSON..=) "StartupParameters" Prelude.<$> startupParameters]))
instance Property "BaseInferenceComponentName" InferenceComponentSpecificationProperty where
  type PropertyType "BaseInferenceComponentName" InferenceComponentSpecificationProperty = Value Prelude.Text
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {baseInferenceComponentName = Prelude.pure newValue, ..}
instance Property "ComputeResourceRequirements" InferenceComponentSpecificationProperty where
  type PropertyType "ComputeResourceRequirements" InferenceComponentSpecificationProperty = InferenceComponentComputeResourceRequirementsProperty
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {computeResourceRequirements = Prelude.pure newValue, ..}
instance Property "Container" InferenceComponentSpecificationProperty where
  type PropertyType "Container" InferenceComponentSpecificationProperty = InferenceComponentContainerSpecificationProperty
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {container = Prelude.pure newValue, ..}
instance Property "ModelName" InferenceComponentSpecificationProperty where
  type PropertyType "ModelName" InferenceComponentSpecificationProperty = Value Prelude.Text
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {modelName = Prelude.pure newValue, ..}
instance Property "StartupParameters" InferenceComponentSpecificationProperty where
  type PropertyType "StartupParameters" InferenceComponentSpecificationProperty = InferenceComponentStartupParametersProperty
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {startupParameters = Prelude.pure newValue, ..}