module Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty (
        ErrorHandlingConfigProperty(..), mkErrorHandlingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ErrorHandlingConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html>
    ErrorHandlingConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html#cfn-appflow-flow-errorhandlingconfig-bucketname>
                                 bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html#cfn-appflow-flow-errorhandlingconfig-bucketprefix>
                                 bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html#cfn-appflow-flow-errorhandlingconfig-failonfirsterror>
                                 failOnFirstError :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkErrorHandlingConfigProperty :: ErrorHandlingConfigProperty
mkErrorHandlingConfigProperty
  = ErrorHandlingConfigProperty
      {bucketName = Prelude.Nothing, bucketPrefix = Prelude.Nothing,
       failOnFirstError = Prelude.Nothing}
instance ToResourceProperties ErrorHandlingConfigProperty where
  toResourceProperties ErrorHandlingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ErrorHandlingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                            (JSON..=) "FailOnFirstError" Prelude.<$> failOnFirstError])}
instance JSON.ToJSON ErrorHandlingConfigProperty where
  toJSON ErrorHandlingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
               (JSON..=) "FailOnFirstError" Prelude.<$> failOnFirstError]))
instance Property "BucketName" ErrorHandlingConfigProperty where
  type PropertyType "BucketName" ErrorHandlingConfigProperty = Value Prelude.Text
  set newValue ErrorHandlingConfigProperty {..}
    = ErrorHandlingConfigProperty
        {bucketName = Prelude.pure newValue, ..}
instance Property "BucketPrefix" ErrorHandlingConfigProperty where
  type PropertyType "BucketPrefix" ErrorHandlingConfigProperty = Value Prelude.Text
  set newValue ErrorHandlingConfigProperty {..}
    = ErrorHandlingConfigProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "FailOnFirstError" ErrorHandlingConfigProperty where
  type PropertyType "FailOnFirstError" ErrorHandlingConfigProperty = Value Prelude.Bool
  set newValue ErrorHandlingConfigProperty {..}
    = ErrorHandlingConfigProperty
        {failOnFirstError = Prelude.pure newValue, ..}