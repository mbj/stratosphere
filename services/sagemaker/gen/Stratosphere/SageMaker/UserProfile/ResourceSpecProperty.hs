module Stratosphere.SageMaker.UserProfile.ResourceSpecProperty (
        ResourceSpecProperty(..), mkResourceSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceSpecProperty
  = ResourceSpecProperty {instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                          sageMakerImageArn :: (Prelude.Maybe (Value Prelude.Text)),
                          sageMakerImageVersionArn :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceSpecProperty :: ResourceSpecProperty
mkResourceSpecProperty
  = ResourceSpecProperty
      {instanceType = Prelude.Nothing,
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
                            (JSON..=) "SageMakerImageArn" Prelude.<$> sageMakerImageArn,
                            (JSON..=) "SageMakerImageVersionArn"
                              Prelude.<$> sageMakerImageVersionArn])}
instance JSON.ToJSON ResourceSpecProperty where
  toJSON ResourceSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "SageMakerImageArn" Prelude.<$> sageMakerImageArn,
               (JSON..=) "SageMakerImageVersionArn"
                 Prelude.<$> sageMakerImageVersionArn]))
instance Property "InstanceType" ResourceSpecProperty where
  type PropertyType "InstanceType" ResourceSpecProperty = Value Prelude.Text
  set newValue ResourceSpecProperty {..}
    = ResourceSpecProperty {instanceType = Prelude.pure newValue, ..}
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