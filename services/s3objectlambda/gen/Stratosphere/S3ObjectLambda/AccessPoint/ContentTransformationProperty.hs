module Stratosphere.S3ObjectLambda.AccessPoint.ContentTransformationProperty (
        module Exports, ContentTransformationProperty(..),
        mkContentTransformationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3ObjectLambda.AccessPoint.AwsLambdaProperty as Exports
import Stratosphere.ResourceProperties
data ContentTransformationProperty
  = ContentTransformationProperty {awsLambda :: AwsLambdaProperty}
mkContentTransformationProperty ::
  AwsLambdaProperty -> ContentTransformationProperty
mkContentTransformationProperty awsLambda
  = ContentTransformationProperty {awsLambda = awsLambda}
instance ToResourceProperties ContentTransformationProperty where
  toResourceProperties ContentTransformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.ContentTransformation",
         properties = ["AwsLambda" JSON..= awsLambda]}
instance JSON.ToJSON ContentTransformationProperty where
  toJSON ContentTransformationProperty {..}
    = JSON.object ["AwsLambda" JSON..= awsLambda]
instance Property "AwsLambda" ContentTransformationProperty where
  type PropertyType "AwsLambda" ContentTransformationProperty = AwsLambdaProperty
  set newValue ContentTransformationProperty {}
    = ContentTransformationProperty {awsLambda = newValue, ..}