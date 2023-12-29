module Stratosphere.SageMaker.ModelPackage.TransformOutputProperty (
        TransformOutputProperty(..), mkTransformOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformOutputProperty
  = TransformOutputProperty {accept :: (Prelude.Maybe (Value Prelude.Text)),
                             assembleWith :: (Prelude.Maybe (Value Prelude.Text)),
                             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                             s3OutputPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformOutputProperty ::
  Value Prelude.Text -> TransformOutputProperty
mkTransformOutputProperty s3OutputPath
  = TransformOutputProperty
      {s3OutputPath = s3OutputPath, accept = Prelude.Nothing,
       assembleWith = Prelude.Nothing, kmsKeyId = Prelude.Nothing}
instance ToResourceProperties TransformOutputProperty where
  toResourceProperties TransformOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.TransformOutput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3OutputPath" JSON..= s3OutputPath]
                           (Prelude.catMaybes
                              [(JSON..=) "Accept" Prelude.<$> accept,
                               (JSON..=) "AssembleWith" Prelude.<$> assembleWith,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON TransformOutputProperty where
  toJSON TransformOutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3OutputPath" JSON..= s3OutputPath]
              (Prelude.catMaybes
                 [(JSON..=) "Accept" Prelude.<$> accept,
                  (JSON..=) "AssembleWith" Prelude.<$> assembleWith,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "Accept" TransformOutputProperty where
  type PropertyType "Accept" TransformOutputProperty = Value Prelude.Text
  set newValue TransformOutputProperty {..}
    = TransformOutputProperty {accept = Prelude.pure newValue, ..}
instance Property "AssembleWith" TransformOutputProperty where
  type PropertyType "AssembleWith" TransformOutputProperty = Value Prelude.Text
  set newValue TransformOutputProperty {..}
    = TransformOutputProperty
        {assembleWith = Prelude.pure newValue, ..}
instance Property "KmsKeyId" TransformOutputProperty where
  type PropertyType "KmsKeyId" TransformOutputProperty = Value Prelude.Text
  set newValue TransformOutputProperty {..}
    = TransformOutputProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "S3OutputPath" TransformOutputProperty where
  type PropertyType "S3OutputPath" TransformOutputProperty = Value Prelude.Text
  set newValue TransformOutputProperty {..}
    = TransformOutputProperty {s3OutputPath = newValue, ..}