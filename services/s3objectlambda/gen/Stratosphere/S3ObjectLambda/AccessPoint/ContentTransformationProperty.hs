module Stratosphere.S3ObjectLambda.AccessPoint.ContentTransformationProperty (
        module Exports, ContentTransformationProperty(..),
        mkContentTransformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3ObjectLambda.AccessPoint.AwsLambdaProperty as Exports
import Stratosphere.ResourceProperties
data ContentTransformationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-contenttransformation.html>
    ContentTransformationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-contenttransformation.html#cfn-s3objectlambda-accesspoint-contenttransformation-awslambda>
                                   awsLambda :: AwsLambdaProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentTransformationProperty ::
  AwsLambdaProperty -> ContentTransformationProperty
mkContentTransformationProperty awsLambda
  = ContentTransformationProperty
      {haddock_workaround_ = (), awsLambda = awsLambda}
instance ToResourceProperties ContentTransformationProperty where
  toResourceProperties ContentTransformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.ContentTransformation",
         supportsTags = Prelude.False,
         properties = ["AwsLambda" JSON..= awsLambda]}
instance JSON.ToJSON ContentTransformationProperty where
  toJSON ContentTransformationProperty {..}
    = JSON.object ["AwsLambda" JSON..= awsLambda]
instance Property "AwsLambda" ContentTransformationProperty where
  type PropertyType "AwsLambda" ContentTransformationProperty = AwsLambdaProperty
  set newValue ContentTransformationProperty {..}
    = ContentTransformationProperty {awsLambda = newValue, ..}