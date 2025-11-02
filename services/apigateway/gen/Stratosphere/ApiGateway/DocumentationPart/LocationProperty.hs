module Stratosphere.ApiGateway.DocumentationPart.LocationProperty (
        LocationProperty(..), mkLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html>
    LocationProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-method>
                      method :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-path>
                      path :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-statuscode>
                      statusCode :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-type>
                      type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationProperty :: LocationProperty
mkLocationProperty
  = LocationProperty
      {haddock_workaround_ = (), method = Prelude.Nothing,
       name = Prelude.Nothing, path = Prelude.Nothing,
       statusCode = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties LocationProperty where
  toResourceProperties LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DocumentationPart.Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "StatusCode" Prelude.<$> statusCode,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON LocationProperty where
  toJSON LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "StatusCode" Prelude.<$> statusCode,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Method" LocationProperty where
  type PropertyType "Method" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {method = Prelude.pure newValue, ..}
instance Property "Name" LocationProperty where
  type PropertyType "Name" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {name = Prelude.pure newValue, ..}
instance Property "Path" LocationProperty where
  type PropertyType "Path" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {path = Prelude.pure newValue, ..}
instance Property "StatusCode" LocationProperty where
  type PropertyType "StatusCode" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {statusCode = Prelude.pure newValue, ..}
instance Property "Type" LocationProperty where
  type PropertyType "Type" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {type' = Prelude.pure newValue, ..}