module Stratosphere.Kendra.DataSource.HookConfigurationProperty (
        module Exports, HookConfigurationProperty(..),
        mkHookConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DocumentAttributeConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-hookconfiguration.html>
    HookConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-hookconfiguration.html#cfn-kendra-datasource-hookconfiguration-invocationcondition>
                               invocationCondition :: (Prelude.Maybe DocumentAttributeConditionProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-hookconfiguration.html#cfn-kendra-datasource-hookconfiguration-lambdaarn>
                               lambdaArn :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-hookconfiguration.html#cfn-kendra-datasource-hookconfiguration-s3bucket>
                               s3Bucket :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HookConfigurationProperty
mkHookConfigurationProperty lambdaArn s3Bucket
  = HookConfigurationProperty
      {haddock_workaround_ = (), lambdaArn = lambdaArn,
       s3Bucket = s3Bucket, invocationCondition = Prelude.Nothing}
instance ToResourceProperties HookConfigurationProperty where
  toResourceProperties HookConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.HookConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LambdaArn" JSON..= lambdaArn, "S3Bucket" JSON..= s3Bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "InvocationCondition"
                                 Prelude.<$> invocationCondition]))}
instance JSON.ToJSON HookConfigurationProperty where
  toJSON HookConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LambdaArn" JSON..= lambdaArn, "S3Bucket" JSON..= s3Bucket]
              (Prelude.catMaybes
                 [(JSON..=) "InvocationCondition"
                    Prelude.<$> invocationCondition])))
instance Property "InvocationCondition" HookConfigurationProperty where
  type PropertyType "InvocationCondition" HookConfigurationProperty = DocumentAttributeConditionProperty
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty
        {invocationCondition = Prelude.pure newValue, ..}
instance Property "LambdaArn" HookConfigurationProperty where
  type PropertyType "LambdaArn" HookConfigurationProperty = Value Prelude.Text
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty {lambdaArn = newValue, ..}
instance Property "S3Bucket" HookConfigurationProperty where
  type PropertyType "S3Bucket" HookConfigurationProperty = Value Prelude.Text
  set newValue HookConfigurationProperty {..}
    = HookConfigurationProperty {s3Bucket = newValue, ..}