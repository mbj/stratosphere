module Stratosphere.S3ObjectLambda.AccessPoint.AwsLambdaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsLambdaProperty :: Prelude.Type
instance ToResourceProperties AwsLambdaProperty
instance JSON.ToJSON AwsLambdaProperty