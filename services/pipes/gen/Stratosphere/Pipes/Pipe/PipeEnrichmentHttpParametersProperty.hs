module Stratosphere.Pipes.Pipe.PipeEnrichmentHttpParametersProperty (
        PipeEnrichmentHttpParametersProperty(..),
        mkPipeEnrichmentHttpParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeEnrichmentHttpParametersProperty
  = PipeEnrichmentHttpParametersProperty {headerParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                          pathParameterValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          queryStringParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkPipeEnrichmentHttpParametersProperty ::
  PipeEnrichmentHttpParametersProperty
mkPipeEnrichmentHttpParametersProperty
  = PipeEnrichmentHttpParametersProperty
      {headerParameters = Prelude.Nothing,
       pathParameterValues = Prelude.Nothing,
       queryStringParameters = Prelude.Nothing}
instance ToResourceProperties PipeEnrichmentHttpParametersProperty where
  toResourceProperties PipeEnrichmentHttpParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeEnrichmentHttpParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
                            (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
                            (JSON..=) "QueryStringParameters"
                              Prelude.<$> queryStringParameters])}
instance JSON.ToJSON PipeEnrichmentHttpParametersProperty where
  toJSON PipeEnrichmentHttpParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
               (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
               (JSON..=) "QueryStringParameters"
                 Prelude.<$> queryStringParameters]))
instance Property "HeaderParameters" PipeEnrichmentHttpParametersProperty where
  type PropertyType "HeaderParameters" PipeEnrichmentHttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeEnrichmentHttpParametersProperty {..}
    = PipeEnrichmentHttpParametersProperty
        {headerParameters = Prelude.pure newValue, ..}
instance Property "PathParameterValues" PipeEnrichmentHttpParametersProperty where
  type PropertyType "PathParameterValues" PipeEnrichmentHttpParametersProperty = ValueList Prelude.Text
  set newValue PipeEnrichmentHttpParametersProperty {..}
    = PipeEnrichmentHttpParametersProperty
        {pathParameterValues = Prelude.pure newValue, ..}
instance Property "QueryStringParameters" PipeEnrichmentHttpParametersProperty where
  type PropertyType "QueryStringParameters" PipeEnrichmentHttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeEnrichmentHttpParametersProperty {..}
    = PipeEnrichmentHttpParametersProperty
        {queryStringParameters = Prelude.pure newValue, ..}