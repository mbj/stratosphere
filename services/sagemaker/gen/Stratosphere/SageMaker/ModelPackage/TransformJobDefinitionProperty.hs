module Stratosphere.SageMaker.ModelPackage.TransformJobDefinitionProperty (
        module Exports, TransformJobDefinitionProperty(..),
        mkTransformJobDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.TransformInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.TransformOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.TransformResourcesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformJobDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html>
    TransformJobDefinitionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-batchstrategy>
                                    batchStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-environment>
                                    environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-maxconcurrenttransforms>
                                    maxConcurrentTransforms :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-maxpayloadinmb>
                                    maxPayloadInMB :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-transforminput>
                                    transformInput :: TransformInputProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-transformoutput>
                                    transformOutput :: TransformOutputProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-transformjobdefinition.html#cfn-sagemaker-modelpackage-transformjobdefinition-transformresources>
                                    transformResources :: TransformResourcesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformJobDefinitionProperty ::
  TransformInputProperty
  -> TransformOutputProperty
     -> TransformResourcesProperty -> TransformJobDefinitionProperty
mkTransformJobDefinitionProperty
  transformInput
  transformOutput
  transformResources
  = TransformJobDefinitionProperty
      {haddock_workaround_ = (), transformInput = transformInput,
       transformOutput = transformOutput,
       transformResources = transformResources,
       batchStrategy = Prelude.Nothing, environment = Prelude.Nothing,
       maxConcurrentTransforms = Prelude.Nothing,
       maxPayloadInMB = Prelude.Nothing}
instance ToResourceProperties TransformJobDefinitionProperty where
  toResourceProperties TransformJobDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.TransformJobDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TransformInput" JSON..= transformInput,
                            "TransformOutput" JSON..= transformOutput,
                            "TransformResources" JSON..= transformResources]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchStrategy" Prelude.<$> batchStrategy,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "MaxConcurrentTransforms"
                                 Prelude.<$> maxConcurrentTransforms,
                               (JSON..=) "MaxPayloadInMB" Prelude.<$> maxPayloadInMB]))}
instance JSON.ToJSON TransformJobDefinitionProperty where
  toJSON TransformJobDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TransformInput" JSON..= transformInput,
               "TransformOutput" JSON..= transformOutput,
               "TransformResources" JSON..= transformResources]
              (Prelude.catMaybes
                 [(JSON..=) "BatchStrategy" Prelude.<$> batchStrategy,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "MaxConcurrentTransforms"
                    Prelude.<$> maxConcurrentTransforms,
                  (JSON..=) "MaxPayloadInMB" Prelude.<$> maxPayloadInMB])))
instance Property "BatchStrategy" TransformJobDefinitionProperty where
  type PropertyType "BatchStrategy" TransformJobDefinitionProperty = Value Prelude.Text
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty
        {batchStrategy = Prelude.pure newValue, ..}
instance Property "Environment" TransformJobDefinitionProperty where
  type PropertyType "Environment" TransformJobDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty
        {environment = Prelude.pure newValue, ..}
instance Property "MaxConcurrentTransforms" TransformJobDefinitionProperty where
  type PropertyType "MaxConcurrentTransforms" TransformJobDefinitionProperty = Value Prelude.Integer
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty
        {maxConcurrentTransforms = Prelude.pure newValue, ..}
instance Property "MaxPayloadInMB" TransformJobDefinitionProperty where
  type PropertyType "MaxPayloadInMB" TransformJobDefinitionProperty = Value Prelude.Integer
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty
        {maxPayloadInMB = Prelude.pure newValue, ..}
instance Property "TransformInput" TransformJobDefinitionProperty where
  type PropertyType "TransformInput" TransformJobDefinitionProperty = TransformInputProperty
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty {transformInput = newValue, ..}
instance Property "TransformOutput" TransformJobDefinitionProperty where
  type PropertyType "TransformOutput" TransformJobDefinitionProperty = TransformOutputProperty
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty {transformOutput = newValue, ..}
instance Property "TransformResources" TransformJobDefinitionProperty where
  type PropertyType "TransformResources" TransformJobDefinitionProperty = TransformResourcesProperty
  set newValue TransformJobDefinitionProperty {..}
    = TransformJobDefinitionProperty
        {transformResources = newValue, ..}