module Stratosphere.ApiGatewayV2.Integration.ResponseParameterMapProperty (
        module Exports, ResponseParameterMapProperty(..),
        mkResponseParameterMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Integration.ResponseParameterProperty as Exports
import Stratosphere.ResourceProperties
data ResponseParameterMapProperty
  = ResponseParameterMapProperty {responseParameters :: (Prelude.Maybe [ResponseParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseParameterMapProperty :: ResponseParameterMapProperty
mkResponseParameterMapProperty
  = ResponseParameterMapProperty
      {responseParameters = Prelude.Nothing}
instance ToResourceProperties ResponseParameterMapProperty where
  toResourceProperties ResponseParameterMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Integration.ResponseParameterMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResponseParameters" Prelude.<$> responseParameters])}
instance JSON.ToJSON ResponseParameterMapProperty where
  toJSON ResponseParameterMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResponseParameters" Prelude.<$> responseParameters]))
instance Property "ResponseParameters" ResponseParameterMapProperty where
  type PropertyType "ResponseParameters" ResponseParameterMapProperty = [ResponseParameterProperty]
  set newValue ResponseParameterMapProperty {}
    = ResponseParameterMapProperty
        {responseParameters = Prelude.pure newValue, ..}