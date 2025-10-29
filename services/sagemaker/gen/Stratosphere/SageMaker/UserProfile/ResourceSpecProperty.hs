module Stratosphere.SageMaker.UserProfile.ResourceSpecProperty (
        ResourceSpecProperty(..), mkResourceSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceSpecProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-resourcespec.html>
    ResourceSpecProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-resourcespec.html#cfn-sagemaker-userprofile-resourcespec-instancetype>
                          instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-resourcespec.html#cfn-sagemaker-userprofile-resourcespec-lifecycleconfigarn>
                          lifecycleConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-resourcespec.html#cfn-sagemaker-userprofile-resourcespec-sagemakerimagearn>
                          sageMakerImageArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-resourcespec.html#cfn-sagemaker-userprofile-resourcespec-sagemakerimageversionarn>
                          sageMakerImageVersionArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceSpecProperty :: ResourceSpecProperty
mkResourceSpecProperty
  = ResourceSpecProperty
      {instanceType = Prelude.Nothing,
       lifecycleConfigArn = Prelude.Nothing,
       sageMakerImageArn = Prelude.Nothing,
       sageMakerImageVersionArn = Prelude.Nothing}
instance ToResourceProperties ResourceSpecProperty where
  toResourceProperties ResourceSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.ResourceSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "LifecycleConfigArn" Prelude.<$> lifecycleConfigArn,
                            (JSON..=) "SageMakerImageArn" Prelude.<$> sageMakerImageArn,
                            (JSON..=) "SageMakerImageVersionArn"
                              Prelude.<$> sageMakerImageVersionArn])}
instance JSON.ToJSON ResourceSpecProperty where
  toJSON ResourceSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "LifecycleConfigArn" Prelude.<$> lifecycleConfigArn,
               (JSON..=) "SageMakerImageArn" Prelude.<$> sageMakerImageArn,
               (JSON..=) "SageMakerImageVersionArn"
                 Prelude.<$> sageMakerImageVersionArn]))
instance Property "InstanceType" ResourceSpecProperty where
  type PropertyType "InstanceType" ResourceSpecProperty = Value Prelude.Text
  set newValue ResourceSpecProperty {..}
    = ResourceSpecProperty {instanceType = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArn" ResourceSpecProperty where
  type PropertyType "LifecycleConfigArn" ResourceSpecProperty = Value Prelude.Text
  set newValue ResourceSpecProperty {..}
    = ResourceSpecProperty
        {lifecycleConfigArn = Prelude.pure newValue, ..}
instance Property "SageMakerImageArn" ResourceSpecProperty where
  type PropertyType "SageMakerImageArn" ResourceSpecProperty = Value Prelude.Text
  set newValue ResourceSpecProperty {..}
    = ResourceSpecProperty
        {sageMakerImageArn = Prelude.pure newValue, ..}
instance Property "SageMakerImageVersionArn" ResourceSpecProperty where
  type PropertyType "SageMakerImageVersionArn" ResourceSpecProperty = Value Prelude.Text
  set newValue ResourceSpecProperty {..}
    = ResourceSpecProperty
        {sageMakerImageVersionArn = Prelude.pure newValue, ..}