module Stratosphere.SageMaker.ModelPackage (
        module Exports, ModelPackage(..), mkModelPackage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.AdditionalInferenceSpecificationDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.DriftCheckBaselinesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.InferenceSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetadataPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelPackageStatusDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelPackageStatusItemProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.SourceAlgorithmSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.UserContextProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ValidationSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelPackage
  = ModelPackage {additionalInferenceSpecificationDefinition :: (Prelude.Maybe AdditionalInferenceSpecificationDefinitionProperty),
                  additionalInferenceSpecifications :: (Prelude.Maybe [AdditionalInferenceSpecificationDefinitionProperty]),
                  additionalInferenceSpecificationsToAdd :: (Prelude.Maybe [AdditionalInferenceSpecificationDefinitionProperty]),
                  approvalDescription :: (Prelude.Maybe (Value Prelude.Text)),
                  certifyForMarketplace :: (Prelude.Maybe (Value Prelude.Bool)),
                  clientToken :: (Prelude.Maybe (Value Prelude.Text)),
                  createdBy :: (Prelude.Maybe UserContextProperty),
                  customerMetadataProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                  domain :: (Prelude.Maybe (Value Prelude.Text)),
                  driftCheckBaselines :: (Prelude.Maybe DriftCheckBaselinesProperty),
                  environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                  inferenceSpecification :: (Prelude.Maybe InferenceSpecificationProperty),
                  lastModifiedBy :: (Prelude.Maybe UserContextProperty),
                  lastModifiedTime :: (Prelude.Maybe (Value Prelude.Text)),
                  metadataProperties :: (Prelude.Maybe MetadataPropertiesProperty),
                  modelApprovalStatus :: (Prelude.Maybe (Value Prelude.Text)),
                  modelMetrics :: (Prelude.Maybe ModelMetricsProperty),
                  modelPackageDescription :: (Prelude.Maybe (Value Prelude.Text)),
                  modelPackageGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                  modelPackageName :: (Prelude.Maybe (Value Prelude.Text)),
                  modelPackageStatusDetails :: (Prelude.Maybe ModelPackageStatusDetailsProperty),
                  modelPackageStatusItem :: (Prelude.Maybe ModelPackageStatusItemProperty),
                  modelPackageVersion :: (Prelude.Maybe (Value Prelude.Integer)),
                  samplePayloadUrl :: (Prelude.Maybe (Value Prelude.Text)),
                  sourceAlgorithmSpecification :: (Prelude.Maybe SourceAlgorithmSpecificationProperty),
                  tags :: (Prelude.Maybe [Tag]),
                  task :: (Prelude.Maybe (Value Prelude.Text)),
                  validationSpecification :: (Prelude.Maybe ValidationSpecificationProperty)}
mkModelPackage :: ModelPackage
mkModelPackage
  = ModelPackage
      {additionalInferenceSpecificationDefinition = Prelude.Nothing,
       additionalInferenceSpecifications = Prelude.Nothing,
       additionalInferenceSpecificationsToAdd = Prelude.Nothing,
       approvalDescription = Prelude.Nothing,
       certifyForMarketplace = Prelude.Nothing,
       clientToken = Prelude.Nothing, createdBy = Prelude.Nothing,
       customerMetadataProperties = Prelude.Nothing,
       domain = Prelude.Nothing, driftCheckBaselines = Prelude.Nothing,
       environment = Prelude.Nothing,
       inferenceSpecification = Prelude.Nothing,
       lastModifiedBy = Prelude.Nothing,
       lastModifiedTime = Prelude.Nothing,
       metadataProperties = Prelude.Nothing,
       modelApprovalStatus = Prelude.Nothing,
       modelMetrics = Prelude.Nothing,
       modelPackageDescription = Prelude.Nothing,
       modelPackageGroupName = Prelude.Nothing,
       modelPackageName = Prelude.Nothing,
       modelPackageStatusDetails = Prelude.Nothing,
       modelPackageStatusItem = Prelude.Nothing,
       modelPackageVersion = Prelude.Nothing,
       samplePayloadUrl = Prelude.Nothing,
       sourceAlgorithmSpecification = Prelude.Nothing,
       tags = Prelude.Nothing, task = Prelude.Nothing,
       validationSpecification = Prelude.Nothing}
instance ToResourceProperties ModelPackage where
  toResourceProperties ModelPackage {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalInferenceSpecificationDefinition"
                              Prelude.<$> additionalInferenceSpecificationDefinition,
                            (JSON..=) "AdditionalInferenceSpecifications"
                              Prelude.<$> additionalInferenceSpecifications,
                            (JSON..=) "AdditionalInferenceSpecificationsToAdd"
                              Prelude.<$> additionalInferenceSpecificationsToAdd,
                            (JSON..=) "ApprovalDescription" Prelude.<$> approvalDescription,
                            (JSON..=) "CertifyForMarketplace"
                              Prelude.<$> certifyForMarketplace,
                            (JSON..=) "ClientToken" Prelude.<$> clientToken,
                            (JSON..=) "CreatedBy" Prelude.<$> createdBy,
                            (JSON..=) "CustomerMetadataProperties"
                              Prelude.<$> customerMetadataProperties,
                            (JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "DriftCheckBaselines" Prelude.<$> driftCheckBaselines,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "InferenceSpecification"
                              Prelude.<$> inferenceSpecification,
                            (JSON..=) "LastModifiedBy" Prelude.<$> lastModifiedBy,
                            (JSON..=) "LastModifiedTime" Prelude.<$> lastModifiedTime,
                            (JSON..=) "MetadataProperties" Prelude.<$> metadataProperties,
                            (JSON..=) "ModelApprovalStatus" Prelude.<$> modelApprovalStatus,
                            (JSON..=) "ModelMetrics" Prelude.<$> modelMetrics,
                            (JSON..=) "ModelPackageDescription"
                              Prelude.<$> modelPackageDescription,
                            (JSON..=) "ModelPackageGroupName"
                              Prelude.<$> modelPackageGroupName,
                            (JSON..=) "ModelPackageName" Prelude.<$> modelPackageName,
                            (JSON..=) "ModelPackageStatusDetails"
                              Prelude.<$> modelPackageStatusDetails,
                            (JSON..=) "ModelPackageStatusItem"
                              Prelude.<$> modelPackageStatusItem,
                            (JSON..=) "ModelPackageVersion" Prelude.<$> modelPackageVersion,
                            (JSON..=) "SamplePayloadUrl" Prelude.<$> samplePayloadUrl,
                            (JSON..=) "SourceAlgorithmSpecification"
                              Prelude.<$> sourceAlgorithmSpecification,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Task" Prelude.<$> task,
                            (JSON..=) "ValidationSpecification"
                              Prelude.<$> validationSpecification])}
instance JSON.ToJSON ModelPackage where
  toJSON ModelPackage {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalInferenceSpecificationDefinition"
                 Prelude.<$> additionalInferenceSpecificationDefinition,
               (JSON..=) "AdditionalInferenceSpecifications"
                 Prelude.<$> additionalInferenceSpecifications,
               (JSON..=) "AdditionalInferenceSpecificationsToAdd"
                 Prelude.<$> additionalInferenceSpecificationsToAdd,
               (JSON..=) "ApprovalDescription" Prelude.<$> approvalDescription,
               (JSON..=) "CertifyForMarketplace"
                 Prelude.<$> certifyForMarketplace,
               (JSON..=) "ClientToken" Prelude.<$> clientToken,
               (JSON..=) "CreatedBy" Prelude.<$> createdBy,
               (JSON..=) "CustomerMetadataProperties"
                 Prelude.<$> customerMetadataProperties,
               (JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "DriftCheckBaselines" Prelude.<$> driftCheckBaselines,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "InferenceSpecification"
                 Prelude.<$> inferenceSpecification,
               (JSON..=) "LastModifiedBy" Prelude.<$> lastModifiedBy,
               (JSON..=) "LastModifiedTime" Prelude.<$> lastModifiedTime,
               (JSON..=) "MetadataProperties" Prelude.<$> metadataProperties,
               (JSON..=) "ModelApprovalStatus" Prelude.<$> modelApprovalStatus,
               (JSON..=) "ModelMetrics" Prelude.<$> modelMetrics,
               (JSON..=) "ModelPackageDescription"
                 Prelude.<$> modelPackageDescription,
               (JSON..=) "ModelPackageGroupName"
                 Prelude.<$> modelPackageGroupName,
               (JSON..=) "ModelPackageName" Prelude.<$> modelPackageName,
               (JSON..=) "ModelPackageStatusDetails"
                 Prelude.<$> modelPackageStatusDetails,
               (JSON..=) "ModelPackageStatusItem"
                 Prelude.<$> modelPackageStatusItem,
               (JSON..=) "ModelPackageVersion" Prelude.<$> modelPackageVersion,
               (JSON..=) "SamplePayloadUrl" Prelude.<$> samplePayloadUrl,
               (JSON..=) "SourceAlgorithmSpecification"
                 Prelude.<$> sourceAlgorithmSpecification,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Task" Prelude.<$> task,
               (JSON..=) "ValidationSpecification"
                 Prelude.<$> validationSpecification]))
instance Property "AdditionalInferenceSpecificationDefinition" ModelPackage where
  type PropertyType "AdditionalInferenceSpecificationDefinition" ModelPackage = AdditionalInferenceSpecificationDefinitionProperty
  set newValue ModelPackage {..}
    = ModelPackage
        {additionalInferenceSpecificationDefinition = Prelude.pure
                                                        newValue,
         ..}
instance Property "AdditionalInferenceSpecifications" ModelPackage where
  type PropertyType "AdditionalInferenceSpecifications" ModelPackage = [AdditionalInferenceSpecificationDefinitionProperty]
  set newValue ModelPackage {..}
    = ModelPackage
        {additionalInferenceSpecifications = Prelude.pure newValue, ..}
instance Property "AdditionalInferenceSpecificationsToAdd" ModelPackage where
  type PropertyType "AdditionalInferenceSpecificationsToAdd" ModelPackage = [AdditionalInferenceSpecificationDefinitionProperty]
  set newValue ModelPackage {..}
    = ModelPackage
        {additionalInferenceSpecificationsToAdd = Prelude.pure newValue,
         ..}
instance Property "ApprovalDescription" ModelPackage where
  type PropertyType "ApprovalDescription" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {approvalDescription = Prelude.pure newValue, ..}
instance Property "CertifyForMarketplace" ModelPackage where
  type PropertyType "CertifyForMarketplace" ModelPackage = Value Prelude.Bool
  set newValue ModelPackage {..}
    = ModelPackage {certifyForMarketplace = Prelude.pure newValue, ..}
instance Property "ClientToken" ModelPackage where
  type PropertyType "ClientToken" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {clientToken = Prelude.pure newValue, ..}
instance Property "CreatedBy" ModelPackage where
  type PropertyType "CreatedBy" ModelPackage = UserContextProperty
  set newValue ModelPackage {..}
    = ModelPackage {createdBy = Prelude.pure newValue, ..}
instance Property "CustomerMetadataProperties" ModelPackage where
  type PropertyType "CustomerMetadataProperties" ModelPackage = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ModelPackage {..}
    = ModelPackage
        {customerMetadataProperties = Prelude.pure newValue, ..}
instance Property "Domain" ModelPackage where
  type PropertyType "Domain" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {domain = Prelude.pure newValue, ..}
instance Property "DriftCheckBaselines" ModelPackage where
  type PropertyType "DriftCheckBaselines" ModelPackage = DriftCheckBaselinesProperty
  set newValue ModelPackage {..}
    = ModelPackage {driftCheckBaselines = Prelude.pure newValue, ..}
instance Property "Environment" ModelPackage where
  type PropertyType "Environment" ModelPackage = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ModelPackage {..}
    = ModelPackage {environment = Prelude.pure newValue, ..}
instance Property "InferenceSpecification" ModelPackage where
  type PropertyType "InferenceSpecification" ModelPackage = InferenceSpecificationProperty
  set newValue ModelPackage {..}
    = ModelPackage {inferenceSpecification = Prelude.pure newValue, ..}
instance Property "LastModifiedBy" ModelPackage where
  type PropertyType "LastModifiedBy" ModelPackage = UserContextProperty
  set newValue ModelPackage {..}
    = ModelPackage {lastModifiedBy = Prelude.pure newValue, ..}
instance Property "LastModifiedTime" ModelPackage where
  type PropertyType "LastModifiedTime" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {lastModifiedTime = Prelude.pure newValue, ..}
instance Property "MetadataProperties" ModelPackage where
  type PropertyType "MetadataProperties" ModelPackage = MetadataPropertiesProperty
  set newValue ModelPackage {..}
    = ModelPackage {metadataProperties = Prelude.pure newValue, ..}
instance Property "ModelApprovalStatus" ModelPackage where
  type PropertyType "ModelApprovalStatus" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {modelApprovalStatus = Prelude.pure newValue, ..}
instance Property "ModelMetrics" ModelPackage where
  type PropertyType "ModelMetrics" ModelPackage = ModelMetricsProperty
  set newValue ModelPackage {..}
    = ModelPackage {modelMetrics = Prelude.pure newValue, ..}
instance Property "ModelPackageDescription" ModelPackage where
  type PropertyType "ModelPackageDescription" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage
        {modelPackageDescription = Prelude.pure newValue, ..}
instance Property "ModelPackageGroupName" ModelPackage where
  type PropertyType "ModelPackageGroupName" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {modelPackageGroupName = Prelude.pure newValue, ..}
instance Property "ModelPackageName" ModelPackage where
  type PropertyType "ModelPackageName" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {modelPackageName = Prelude.pure newValue, ..}
instance Property "ModelPackageStatusDetails" ModelPackage where
  type PropertyType "ModelPackageStatusDetails" ModelPackage = ModelPackageStatusDetailsProperty
  set newValue ModelPackage {..}
    = ModelPackage
        {modelPackageStatusDetails = Prelude.pure newValue, ..}
instance Property "ModelPackageStatusItem" ModelPackage where
  type PropertyType "ModelPackageStatusItem" ModelPackage = ModelPackageStatusItemProperty
  set newValue ModelPackage {..}
    = ModelPackage {modelPackageStatusItem = Prelude.pure newValue, ..}
instance Property "ModelPackageVersion" ModelPackage where
  type PropertyType "ModelPackageVersion" ModelPackage = Value Prelude.Integer
  set newValue ModelPackage {..}
    = ModelPackage {modelPackageVersion = Prelude.pure newValue, ..}
instance Property "SamplePayloadUrl" ModelPackage where
  type PropertyType "SamplePayloadUrl" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {samplePayloadUrl = Prelude.pure newValue, ..}
instance Property "SourceAlgorithmSpecification" ModelPackage where
  type PropertyType "SourceAlgorithmSpecification" ModelPackage = SourceAlgorithmSpecificationProperty
  set newValue ModelPackage {..}
    = ModelPackage
        {sourceAlgorithmSpecification = Prelude.pure newValue, ..}
instance Property "Tags" ModelPackage where
  type PropertyType "Tags" ModelPackage = [Tag]
  set newValue ModelPackage {..}
    = ModelPackage {tags = Prelude.pure newValue, ..}
instance Property "Task" ModelPackage where
  type PropertyType "Task" ModelPackage = Value Prelude.Text
  set newValue ModelPackage {..}
    = ModelPackage {task = Prelude.pure newValue, ..}
instance Property "ValidationSpecification" ModelPackage where
  type PropertyType "ValidationSpecification" ModelPackage = ValidationSpecificationProperty
  set newValue ModelPackage {..}
    = ModelPackage
        {validationSpecification = Prelude.pure newValue, ..}