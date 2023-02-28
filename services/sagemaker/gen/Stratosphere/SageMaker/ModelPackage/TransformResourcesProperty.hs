module Stratosphere.SageMaker.ModelPackage.TransformResourcesProperty (
        TransformResourcesProperty(..), mkTransformResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformResourcesProperty
  = TransformResourcesProperty {instanceCount :: (Value Prelude.Integer),
                                instanceType :: (Value Prelude.Text),
                                volumeKmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
mkTransformResourcesProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> TransformResourcesProperty
mkTransformResourcesProperty instanceCount instanceType
  = TransformResourcesProperty
      {instanceCount = instanceCount, instanceType = instanceType,
       volumeKmsKeyId = Prelude.Nothing}
instance ToResourceProperties TransformResourcesProperty where
  toResourceProperties TransformResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.TransformResources",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceCount" JSON..= instanceCount,
                            "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId]))}
instance JSON.ToJSON TransformResourcesProperty where
  toJSON TransformResourcesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceCount" JSON..= instanceCount,
               "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId])))
instance Property "InstanceCount" TransformResourcesProperty where
  type PropertyType "InstanceCount" TransformResourcesProperty = Value Prelude.Integer
  set newValue TransformResourcesProperty {..}
    = TransformResourcesProperty {instanceCount = newValue, ..}
instance Property "InstanceType" TransformResourcesProperty where
  type PropertyType "InstanceType" TransformResourcesProperty = Value Prelude.Text
  set newValue TransformResourcesProperty {..}
    = TransformResourcesProperty {instanceType = newValue, ..}
instance Property "VolumeKmsKeyId" TransformResourcesProperty where
  type PropertyType "VolumeKmsKeyId" TransformResourcesProperty = Value Prelude.Text
  set newValue TransformResourcesProperty {..}
    = TransformResourcesProperty
        {volumeKmsKeyId = Prelude.pure newValue, ..}