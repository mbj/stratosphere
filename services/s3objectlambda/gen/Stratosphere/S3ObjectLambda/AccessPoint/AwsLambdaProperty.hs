module Stratosphere.S3ObjectLambda.AccessPoint.AwsLambdaProperty (
        AwsLambdaProperty(..), mkAwsLambdaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsLambdaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-awslambda.html>
    AwsLambdaProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-awslambda.html#cfn-s3objectlambda-accesspoint-awslambda-functionarn>
                       functionArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-awslambda.html#cfn-s3objectlambda-accesspoint-awslambda-functionpayload>
                       functionPayload :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsLambdaProperty :: Value Prelude.Text -> AwsLambdaProperty
mkAwsLambdaProperty functionArn
  = AwsLambdaProperty
      {haddock_workaround_ = (), functionArn = functionArn,
       functionPayload = Prelude.Nothing}
instance ToResourceProperties AwsLambdaProperty where
  toResourceProperties AwsLambdaProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.AwsLambda",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionArn" JSON..= functionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "FunctionPayload" Prelude.<$> functionPayload]))}
instance JSON.ToJSON AwsLambdaProperty where
  toJSON AwsLambdaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionArn" JSON..= functionArn]
              (Prelude.catMaybes
                 [(JSON..=) "FunctionPayload" Prelude.<$> functionPayload])))
instance Property "FunctionArn" AwsLambdaProperty where
  type PropertyType "FunctionArn" AwsLambdaProperty = Value Prelude.Text
  set newValue AwsLambdaProperty {..}
    = AwsLambdaProperty {functionArn = newValue, ..}
instance Property "FunctionPayload" AwsLambdaProperty where
  type PropertyType "FunctionPayload" AwsLambdaProperty = Value Prelude.Text
  set newValue AwsLambdaProperty {..}
    = AwsLambdaProperty {functionPayload = Prelude.pure newValue, ..}