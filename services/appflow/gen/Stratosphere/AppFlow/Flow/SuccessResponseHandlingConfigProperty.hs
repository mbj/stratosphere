module Stratosphere.AppFlow.Flow.SuccessResponseHandlingConfigProperty (
        SuccessResponseHandlingConfigProperty(..),
        mkSuccessResponseHandlingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuccessResponseHandlingConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-successresponsehandlingconfig.html>
    SuccessResponseHandlingConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-successresponsehandlingconfig.html#cfn-appflow-flow-successresponsehandlingconfig-bucketname>
                                           bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-successresponsehandlingconfig.html#cfn-appflow-flow-successresponsehandlingconfig-bucketprefix>
                                           bucketPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuccessResponseHandlingConfigProperty ::
  SuccessResponseHandlingConfigProperty
mkSuccessResponseHandlingConfigProperty
  = SuccessResponseHandlingConfigProperty
      {bucketName = Prelude.Nothing, bucketPrefix = Prelude.Nothing}
instance ToResourceProperties SuccessResponseHandlingConfigProperty where
  toResourceProperties SuccessResponseHandlingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SuccessResponseHandlingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix])}
instance JSON.ToJSON SuccessResponseHandlingConfigProperty where
  toJSON SuccessResponseHandlingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix]))
instance Property "BucketName" SuccessResponseHandlingConfigProperty where
  type PropertyType "BucketName" SuccessResponseHandlingConfigProperty = Value Prelude.Text
  set newValue SuccessResponseHandlingConfigProperty {..}
    = SuccessResponseHandlingConfigProperty
        {bucketName = Prelude.pure newValue, ..}
instance Property "BucketPrefix" SuccessResponseHandlingConfigProperty where
  type PropertyType "BucketPrefix" SuccessResponseHandlingConfigProperty = Value Prelude.Text
  set newValue SuccessResponseHandlingConfigProperty {..}
    = SuccessResponseHandlingConfigProperty
        {bucketPrefix = Prelude.pure newValue, ..}