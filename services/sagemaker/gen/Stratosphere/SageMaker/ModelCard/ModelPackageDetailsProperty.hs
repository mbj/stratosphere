module Stratosphere.SageMaker.ModelCard.ModelPackageDetailsProperty (
        module Exports, ModelPackageDetailsProperty(..),
        mkModelPackageDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.InferenceSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ModelPackageCreatorProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.SourceAlgorithmProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelPackageDetailsProperty
  = ModelPackageDetailsProperty {approvalDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                 createdBy :: (Prelude.Maybe ModelPackageCreatorProperty),
                                 domain :: (Prelude.Maybe (Value Prelude.Text)),
                                 inferenceSpecification :: (Prelude.Maybe InferenceSpecificationProperty),
                                 modelApprovalStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageName :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageVersion :: (Prelude.Maybe (Value Prelude.Double)),
                                 sourceAlgorithms :: (Prelude.Maybe [SourceAlgorithmProperty]),
                                 task :: (Prelude.Maybe (Value Prelude.Text))}
mkModelPackageDetailsProperty :: ModelPackageDetailsProperty
mkModelPackageDetailsProperty
  = ModelPackageDetailsProperty
      {approvalDescription = Prelude.Nothing,
       createdBy = Prelude.Nothing, domain = Prelude.Nothing,
       inferenceSpecification = Prelude.Nothing,
       modelApprovalStatus = Prelude.Nothing,
       modelPackageArn = Prelude.Nothing,
       modelPackageDescription = Prelude.Nothing,
       modelPackageGroupName = Prelude.Nothing,
       modelPackageName = Prelude.Nothing,
       modelPackageStatus = Prelude.Nothing,
       modelPackageVersion = Prelude.Nothing,
       sourceAlgorithms = Prelude.Nothing, task = Prelude.Nothing}
instance ToResourceProperties ModelPackageDetailsProperty where
  toResourceProperties ModelPackageDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.ModelPackageDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApprovalDescription" Prelude.<$> approvalDescription,
                            (JSON..=) "CreatedBy" Prelude.<$> createdBy,
                            (JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "InferenceSpecification"
                              Prelude.<$> inferenceSpecification,
                            (JSON..=) "ModelApprovalStatus" Prelude.<$> modelApprovalStatus,
                            (JSON..=) "ModelPackageArn" Prelude.<$> modelPackageArn,
                            (JSON..=) "ModelPackageDescription"
                              Prelude.<$> modelPackageDescription,
                            (JSON..=) "ModelPackageGroupName"
                              Prelude.<$> modelPackageGroupName,
                            (JSON..=) "ModelPackageName" Prelude.<$> modelPackageName,
                            (JSON..=) "ModelPackageStatus" Prelude.<$> modelPackageStatus,
                            (JSON..=) "ModelPackageVersion" Prelude.<$> modelPackageVersion,
                            (JSON..=) "SourceAlgorithms" Prelude.<$> sourceAlgorithms,
                            (JSON..=) "Task" Prelude.<$> task])}
instance JSON.ToJSON ModelPackageDetailsProperty where
  toJSON ModelPackageDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApprovalDescription" Prelude.<$> approvalDescription,
               (JSON..=) "CreatedBy" Prelude.<$> createdBy,
               (JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "InferenceSpecification"
                 Prelude.<$> inferenceSpecification,
               (JSON..=) "ModelApprovalStatus" Prelude.<$> modelApprovalStatus,
               (JSON..=) "ModelPackageArn" Prelude.<$> modelPackageArn,
               (JSON..=) "ModelPackageDescription"
                 Prelude.<$> modelPackageDescription,
               (JSON..=) "ModelPackageGroupName"
                 Prelude.<$> modelPackageGroupName,
               (JSON..=) "ModelPackageName" Prelude.<$> modelPackageName,
               (JSON..=) "ModelPackageStatus" Prelude.<$> modelPackageStatus,
               (JSON..=) "ModelPackageVersion" Prelude.<$> modelPackageVersion,
               (JSON..=) "SourceAlgorithms" Prelude.<$> sourceAlgorithms,
               (JSON..=) "Task" Prelude.<$> task]))
instance Property "ApprovalDescription" ModelPackageDetailsProperty where
  type PropertyType "ApprovalDescription" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {approvalDescription = Prelude.pure newValue, ..}
instance Property "CreatedBy" ModelPackageDetailsProperty where
  type PropertyType "CreatedBy" ModelPackageDetailsProperty = ModelPackageCreatorProperty
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {createdBy = Prelude.pure newValue, ..}
instance Property "Domain" ModelPackageDetailsProperty where
  type PropertyType "Domain" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty {domain = Prelude.pure newValue, ..}
instance Property "InferenceSpecification" ModelPackageDetailsProperty where
  type PropertyType "InferenceSpecification" ModelPackageDetailsProperty = InferenceSpecificationProperty
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {inferenceSpecification = Prelude.pure newValue, ..}
instance Property "ModelApprovalStatus" ModelPackageDetailsProperty where
  type PropertyType "ModelApprovalStatus" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelApprovalStatus = Prelude.pure newValue, ..}
instance Property "ModelPackageArn" ModelPackageDetailsProperty where
  type PropertyType "ModelPackageArn" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelPackageArn = Prelude.pure newValue, ..}
instance Property "ModelPackageDescription" ModelPackageDetailsProperty where
  type PropertyType "ModelPackageDescription" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelPackageDescription = Prelude.pure newValue, ..}
instance Property "ModelPackageGroupName" ModelPackageDetailsProperty where
  type PropertyType "ModelPackageGroupName" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelPackageGroupName = Prelude.pure newValue, ..}
instance Property "ModelPackageName" ModelPackageDetailsProperty where
  type PropertyType "ModelPackageName" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelPackageName = Prelude.pure newValue, ..}
instance Property "ModelPackageStatus" ModelPackageDetailsProperty where
  type PropertyType "ModelPackageStatus" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelPackageStatus = Prelude.pure newValue, ..}
instance Property "ModelPackageVersion" ModelPackageDetailsProperty where
  type PropertyType "ModelPackageVersion" ModelPackageDetailsProperty = Value Prelude.Double
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {modelPackageVersion = Prelude.pure newValue, ..}
instance Property "SourceAlgorithms" ModelPackageDetailsProperty where
  type PropertyType "SourceAlgorithms" ModelPackageDetailsProperty = [SourceAlgorithmProperty]
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty
        {sourceAlgorithms = Prelude.pure newValue, ..}
instance Property "Task" ModelPackageDetailsProperty where
  type PropertyType "Task" ModelPackageDetailsProperty = Value Prelude.Text
  set newValue ModelPackageDetailsProperty {..}
    = ModelPackageDetailsProperty {task = Prelude.pure newValue, ..}