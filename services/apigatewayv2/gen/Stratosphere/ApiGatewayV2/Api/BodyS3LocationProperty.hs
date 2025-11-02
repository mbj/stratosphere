module Stratosphere.ApiGatewayV2.Api.BodyS3LocationProperty (
        BodyS3LocationProperty(..), mkBodyS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodyS3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html>
    BodyS3LocationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-bucket>
                            bucket :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-etag>
                            etag :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-key>
                            key :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-version>
                            version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodyS3LocationProperty :: BodyS3LocationProperty
mkBodyS3LocationProperty
  = BodyS3LocationProperty
      {haddock_workaround_ = (), bucket = Prelude.Nothing,
       etag = Prelude.Nothing, key = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties BodyS3LocationProperty where
  toResourceProperties BodyS3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Api.BodyS3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bucket" Prelude.<$> bucket,
                            (JSON..=) "Etag" Prelude.<$> etag, (JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON BodyS3LocationProperty where
  toJSON BodyS3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bucket" Prelude.<$> bucket,
               (JSON..=) "Etag" Prelude.<$> etag, (JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Bucket" BodyS3LocationProperty where
  type PropertyType "Bucket" BodyS3LocationProperty = Value Prelude.Text
  set newValue BodyS3LocationProperty {..}
    = BodyS3LocationProperty {bucket = Prelude.pure newValue, ..}
instance Property "Etag" BodyS3LocationProperty where
  type PropertyType "Etag" BodyS3LocationProperty = Value Prelude.Text
  set newValue BodyS3LocationProperty {..}
    = BodyS3LocationProperty {etag = Prelude.pure newValue, ..}
instance Property "Key" BodyS3LocationProperty where
  type PropertyType "Key" BodyS3LocationProperty = Value Prelude.Text
  set newValue BodyS3LocationProperty {..}
    = BodyS3LocationProperty {key = Prelude.pure newValue, ..}
instance Property "Version" BodyS3LocationProperty where
  type PropertyType "Version" BodyS3LocationProperty = Value Prelude.Text
  set newValue BodyS3LocationProperty {..}
    = BodyS3LocationProperty {version = Prelude.pure newValue, ..}