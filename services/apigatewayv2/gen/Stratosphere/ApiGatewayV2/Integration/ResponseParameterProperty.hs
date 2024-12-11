module Stratosphere.ApiGatewayV2.Integration.ResponseParameterProperty (
        ResponseParameterProperty(..), mkResponseParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseParameterProperty
  = ResponseParameterProperty {destination :: (Prelude.Maybe (Value Prelude.Text)),
                               source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseParameterProperty :: ResponseParameterProperty
mkResponseParameterProperty
  = ResponseParameterProperty
      {destination = Prelude.Nothing, source = Prelude.Nothing}
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