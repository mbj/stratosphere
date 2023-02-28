module Stratosphere.Events.Connection.ConnectionHttpParametersProperty (
        module Exports, ConnectionHttpParametersProperty(..),
        mkConnectionHttpParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.ParameterProperty as Exports
import Stratosphere.ResourceProperties
data ConnectionHttpParametersProperty
  = ConnectionHttpParametersProperty {bodyParameters :: (Prelude.Maybe [ParameterProperty]),
                                      headerParameters :: (Prelude.Maybe [ParameterProperty]),
                                      queryStringParameters :: (Prelude.Maybe [ParameterProperty])}
mkConnectionHttpParametersProperty ::
  ConnectionHttpParametersProperty
mkConnectionHttpParametersProperty
  = ConnectionHttpParametersProperty
      {bodyParameters = Prelude.Nothing,
       headerParameters = Prelude.Nothing,
       queryStringParameters = Prelude.Nothing}
instance ToResourceProperties ConnectionHttpParametersProperty where
  toResourceProperties ConnectionHttpParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.ConnectionHttpParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BodyParameters" Prelude.<$> bodyParameters,
                            (JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
                            (JSON..=) "QueryStringParameters"
                              Prelude.<$> queryStringParameters])}
instance JSON.ToJSON ConnectionHttpParametersProperty where
  toJSON ConnectionHttpParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BodyParameters" Prelude.<$> bodyParameters,
               (JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
               (JSON..=) "QueryStringParameters"
                 Prelude.<$> queryStringParameters]))
instance Property "BodyParameters" ConnectionHttpParametersProperty where
  type PropertyType "BodyParameters" ConnectionHttpParametersProperty = [ParameterProperty]
  set newValue ConnectionHttpParametersProperty {..}
    = ConnectionHttpParametersProperty
        {bodyParameters = Prelude.pure newValue, ..}
instance Property "HeaderParameters" ConnectionHttpParametersProperty where
  type PropertyType "HeaderParameters" ConnectionHttpParametersProperty = [ParameterProperty]
  set newValue ConnectionHttpParametersProperty {..}
    = ConnectionHttpParametersProperty
        {headerParameters = Prelude.pure newValue, ..}
instance Property "QueryStringParameters" ConnectionHttpParametersProperty where
  type PropertyType "QueryStringParameters" ConnectionHttpParametersProperty = [ParameterProperty]
  set newValue ConnectionHttpParametersProperty {..}
    = ConnectionHttpParametersProperty
        {queryStringParameters = Prelude.pure newValue, ..}