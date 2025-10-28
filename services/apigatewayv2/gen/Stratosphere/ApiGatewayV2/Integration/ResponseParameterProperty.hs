module Stratosphere.ApiGatewayV2.Integration.ResponseParameterProperty (
        ResponseParameterProperty(..), mkResponseParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-responseparameter.html>
    ResponseParameterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-responseparameter.html#cfn-apigatewayv2-integration-responseparameter-destination>
                               destination :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-responseparameter.html#cfn-apigatewayv2-integration-responseparameter-source>
                               source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseParameterProperty :: ResponseParameterProperty
mkResponseParameterProperty
  = ResponseParameterProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       source = Prelude.Nothing}
instance ToResourceProperties ResponseParameterProperty where
  toResourceProperties ResponseParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Integration.ResponseParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ResponseParameterProperty where
  toJSON ResponseParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "Source" Prelude.<$> source]))
instance Property "Destination" ResponseParameterProperty where
  type PropertyType "Destination" ResponseParameterProperty = Value Prelude.Text
  set newValue ResponseParameterProperty {..}
    = ResponseParameterProperty
        {destination = Prelude.pure newValue, ..}
instance Property "Source" ResponseParameterProperty where
  type PropertyType "Source" ResponseParameterProperty = Value Prelude.Text
  set newValue ResponseParameterProperty {..}
    = ResponseParameterProperty {source = Prelude.pure newValue, ..}