module Stratosphere.SageMaker.ModelPackage.InferenceSpecificationProperty (
        module Exports, InferenceSpecificationProperty(..),
        mkInferenceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelPackageContainerDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-inferencespecification.html>
    InferenceSpecificationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-inferencespecification.html#cfn-sagemaker-modelpackage-inferencespecification-containers>
                                    containers :: [ModelPackageContainerDefinitionProperty],
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-inferencespecification.html#cfn-sagemaker-modelpackage-inferencespecification-supportedcontenttypes>
                                    supportedContentTypes :: (ValueList Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-inferencespecification.html#cfn-sagemaker-modelpackage-inferencespecification-supportedrealtimeinferenceinstancetypes>
                                    supportedRealtimeInferenceInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-inferencespecification.html#cfn-sagemaker-modelpackage-inferencespecification-supportedresponsemimetypes>
                                    supportedResponseMIMETypes :: (ValueList Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-inferencespecification.html#cfn-sagemaker-modelpackage-inferencespecification-supportedtransforminstancetypes>
                                    supportedTransformInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceSpecificationProperty ::
  [ModelPackageContainerDefinitionProperty]
  -> ValueList Prelude.Text
     -> ValueList Prelude.Text -> InferenceSpecificationProperty
mkInferenceSpecificationProperty
  containers
  supportedContentTypes
  supportedResponseMIMETypes
  = InferenceSpecificationProperty
      {haddock_workaround_ = (), containers = containers,
       supportedContentTypes = supportedContentTypes,
       supportedResponseMIMETypes = supportedResponseMIMETypes,
       supportedRealtimeInferenceInstanceTypes = Prelude.Nothing,
       supportedTransformInstanceTypes = Prelude.Nothing}
instance ToResourceProperties InferenceSpecificationProperty where
  toResourceProperties InferenceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.InferenceSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Containers" JSON..= containers,
                            "SupportedContentTypes" JSON..= supportedContentTypes,
                            "SupportedResponseMIMETypes" JSON..= supportedResponseMIMETypes]
                           (Prelude.catMaybes
                              [(JSON..=) "SupportedRealtimeInferenceInstanceTypes"
                                 Prelude.<$> supportedRealtimeInferenceInstanceTypes,
                               (JSON..=) "SupportedTransformInstanceTypes"
                                 Prelude.<$> supportedTransformInstanceTypes]))}
instance JSON.ToJSON InferenceSpecificationProperty where
  toJSON InferenceSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Containers" JSON..= containers,
               "SupportedContentTypes" JSON..= supportedContentTypes,
               "SupportedResponseMIMETypes" JSON..= supportedResponseMIMETypes]
              (Prelude.catMaybes
                 [(JSON..=) "SupportedRealtimeInferenceInstanceTypes"
                    Prelude.<$> supportedRealtimeInferenceInstanceTypes,
                  (JSON..=) "SupportedTransformInstanceTypes"
                    Prelude.<$> supportedTransformInstanceTypes])))
instance Property "Containers" InferenceSpecificationProperty where
  type PropertyType "Containers" InferenceSpecificationProperty = [ModelPackageContainerDefinitionProperty]
  set newValue InferenceSpecificationProperty {..}
    = InferenceSpecificationProperty {containers = newValue, ..}
instance Property "SupportedContentTypes" InferenceSpecificationProperty where
  type PropertyType "SupportedContentTypes" InferenceSpecificationProperty = ValueList Prelude.Text
  set newValue InferenceSpecificationProperty {..}
    = InferenceSpecificationProperty
        {supportedContentTypes = newValue, ..}
instance Property "SupportedRealtimeInferenceInstanceTypes" InferenceSpecificationProperty where
  type PropertyType "SupportedRealtimeInferenceInstanceTypes" InferenceSpecificationProperty = ValueList Prelude.Text
  set newValue InferenceSpecificationProperty {..}
    = InferenceSpecificationProperty
        {supportedRealtimeInferenceInstanceTypes = Prelude.pure newValue,
         ..}
instance Property "SupportedResponseMIMETypes" InferenceSpecificationProperty where
  type PropertyType "SupportedResponseMIMETypes" InferenceSpecificationProperty = ValueList Prelude.Text
  set newValue InferenceSpecificationProperty {..}
    = InferenceSpecificationProperty
        {supportedResponseMIMETypes = newValue, ..}
instance Property "SupportedTransformInstanceTypes" InferenceSpecificationProperty where
  type PropertyType "SupportedTransformInstanceTypes" InferenceSpecificationProperty = ValueList Prelude.Text
  set newValue InferenceSpecificationProperty {..}
    = InferenceSpecificationProperty
        {supportedTransformInstanceTypes = Prelude.pure newValue, ..}