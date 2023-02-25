module Stratosphere.ApiGatewayV2.Integration.ResponseParameterListProperty (
        module Exports, ResponseParameterListProperty(..),
        mkResponseParameterListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Integration.ResponseParameterProperty as Exports
import Stratosphere.ResourceProperties
data ResponseParameterListProperty
  = ResponseParameterListProperty {responseParameters :: (Prelude.Maybe [ResponseParameterProperty])}
mkResponseParameterListProperty :: ResponseParameterListProperty
mkResponseParameterListProperty
  = ResponseParameterListProperty
      {responseParameters = Prelude.Nothing}
instance ToResourceProperties ResponseParameterListProperty where
  toResourceProperties ResponseParameterListProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Integration.ResponseParameterList",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResponseParameters" Prelude.<$> responseParameters])}
instance JSON.ToJSON ResponseParameterListProperty where
  toJSON ResponseParameterListProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResponseParameters" Prelude.<$> responseParameters]))
instance Property "ResponseParameters" ResponseParameterListProperty where
  type PropertyType "ResponseParameters" ResponseParameterListProperty = [ResponseParameterProperty]
  set newValue ResponseParameterListProperty {}
    = ResponseParameterListProperty
        {responseParameters = Prelude.pure newValue, ..}