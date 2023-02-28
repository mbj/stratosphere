module Stratosphere.ApiGatewayV2.Integration.ResponseParameterProperty (
        ResponseParameterProperty(..), mkResponseParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseParameterProperty
  = ResponseParameterProperty {destination :: (Value Prelude.Text),
                               source :: (Value Prelude.Text)}
mkResponseParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResponseParameterProperty
mkResponseParameterProperty destination source
  = ResponseParameterProperty
      {destination = destination, source = source}
instance ToResourceProperties ResponseParameterProperty where
  toResourceProperties ResponseParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Integration.ResponseParameter",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "Source" JSON..= source]}
instance JSON.ToJSON ResponseParameterProperty where
  toJSON ResponseParameterProperty {..}
    = JSON.object
        ["Destination" JSON..= destination, "Source" JSON..= source]
instance Property "Destination" ResponseParameterProperty where
  type PropertyType "Destination" ResponseParameterProperty = Value Prelude.Text
  set newValue ResponseParameterProperty {..}
    = ResponseParameterProperty {destination = newValue, ..}
instance Property "Source" ResponseParameterProperty where
  type PropertyType "Source" ResponseParameterProperty = Value Prelude.Text
  set newValue ResponseParameterProperty {..}
    = ResponseParameterProperty {source = newValue, ..}