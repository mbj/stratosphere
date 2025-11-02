module Stratosphere.Events.Rule.HttpParametersProperty (
        HttpParametersProperty(..), mkHttpParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html>
    HttpParametersProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html#cfn-events-rule-httpparameters-headerparameters>
                            headerParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html#cfn-events-rule-httpparameters-pathparametervalues>
                            pathParameterValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-httpparameters.html#cfn-events-rule-httpparameters-querystringparameters>
                            queryStringParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpParametersProperty :: HttpParametersProperty
mkHttpParametersProperty
  = HttpParametersProperty
      {haddock_workaround_ = (), headerParameters = Prelude.Nothing,
       pathParameterValues = Prelude.Nothing,
       queryStringParameters = Prelude.Nothing}
instance ToResourceProperties HttpParametersProperty where
  toResourceProperties HttpParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.HttpParameters",
         supportsTags = Prelude.False,
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
  type PropertyType "PathParameterValues" HttpParametersProperty = ValueList Prelude.Text
  set newValue HttpParametersProperty {..}
    = HttpParametersProperty
        {pathParameterValues = Prelude.pure newValue, ..}
instance Property "QueryStringParameters" HttpParametersProperty where
  type PropertyType "QueryStringParameters" HttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue HttpParametersProperty {..}
    = HttpParametersProperty
        {queryStringParameters = Prelude.pure newValue, ..}