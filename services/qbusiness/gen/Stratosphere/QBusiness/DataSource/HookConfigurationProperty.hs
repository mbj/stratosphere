module Stratosphere.QBusiness.DataSource.HookConfigurationProperty (
        module Exports, HookConfigurationProperty(..),
        mkHookConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.DocumentAttributeConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookConfigurationProperty
  = HookConfigurationProperty {invocationCondition :: (Prelude.Maybe DocumentAttributeConditionProperty),
                               lambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               s3BucketName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookConfigurationProperty :: HookConfigurationProperty
mkHookConfigurationProperty
  = HookConfigurationProperty
      {invocationCondition = Prelude.Nothing,
       lambdaArn = Prelude.Nothing, roleArn = Prelude.Nothing,
       s3BucketName = Prelude.Nothing}
instance ToResourceProperties HookConfigurationProperty where
  toResourceProperties HookConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.HookConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InvocationCondition" Prelude.<$> invocationCondition,
                            (JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "S3BucketName" Prelude.<$> s3BucketName])}
instance JSON.ToJSON HookConfigurationProperty where
  toJSON HookConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InvocationCondition" Prelude.<$> invocationCondition,
               (JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "S3BucketName" Prelude.<$> s3BucketName]))
instance Property "InvocationCondition" HookConfigurationProperty where
  type PropertyType "InvocationCondition" HookConfigurationProperty = DocumentAttributeConditionProperty
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty
        {invocationCondition = Prelude.pure newValue, ..}
instance Property "LambdaArn" HookConfigurationProperty where
  type PropertyType "LambdaArn" HookConfigurationProperty = Value Prelude.Text
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty {lambdaArn = Prelude.pure newValue, ..}
instance Property "RoleArn" HookConfigurationProperty where
  type PropertyType "RoleArn" HookConfigurationProperty = Value Prelude.Text
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty {roleArn = Prelude.pure newValue, ..}
instance Property "S3BucketName" HookConfigurationProperty where
  type PropertyType "S3BucketName" HookConfigurationProperty = Value Prelude.Text
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty
        {s3BucketName = Prelude.pure newValue, ..}