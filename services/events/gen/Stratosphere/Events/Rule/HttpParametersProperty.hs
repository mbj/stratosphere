module Stratosphere.Events.Rule.HttpParametersProperty (
        HttpParametersProperty(..), mkHttpParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpParametersProperty
  = HttpParametersProperty {headerParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            pathParameterValues :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                            queryStringParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkHttpParametersProperty :: HttpParametersProperty
mkHttpParametersProperty
  = HttpParametersProperty
      {headerParameters = Prelude.Nothing,
       pathParameterValues = Prelude.Nothing,
       queryStringParameters = Prelude.Nothing}
instance ToResourceProperties HttpParametersProperty where
  toResourceProperties HttpParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.HttpParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
                            (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
                            (JSON..=) "QueryStringParameters"
                              Prelude.<$> queryStringParameters])}
instance JSON.ToJSON HttpParametersProperty where
  toJSON HttpParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
               (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
               (JSON..=) "QueryStringParameters"
                 Prelude.<$> queryStringParameters]))
instance Property "HeaderParameters" HttpParametersProperty where
  type PropertyType "HeaderParameters" HttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue HttpParametersProperty {..}
    = HttpParametersProperty
        {headerParameters = Prelude.pure newValue, ..}
instance Property "PathParameterValues" HttpParametersProperty where
  type PropertyType "PathParameterValues" HttpParametersProperty = ValueList (Value Prelude.Text)
  set newValue HttpParametersProperty {..}
    = HttpParametersProperty
        {pathParameterValues = Prelude.pure newValue, ..}
instance Property "QueryStringParameters" HttpParametersProperty where
  type PropertyType "QueryStringParameters" HttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue HttpParametersProperty {..}
    = HttpParametersProperty
        {queryStringParameters = Prelude.pure newValue, ..}