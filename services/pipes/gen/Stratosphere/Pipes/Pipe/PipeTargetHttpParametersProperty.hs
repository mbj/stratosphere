module Stratosphere.Pipes.Pipe.PipeTargetHttpParametersProperty (
        PipeTargetHttpParametersProperty(..),
        mkPipeTargetHttpParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetHttpParametersProperty
  = PipeTargetHttpParametersProperty {headerParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      pathParameterValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      queryStringParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkPipeTargetHttpParametersProperty ::
  PipeTargetHttpParametersProperty
mkPipeTargetHttpParametersProperty
  = PipeTargetHttpParametersProperty
      {headerParameters = Prelude.Nothing,
       pathParameterValues = Prelude.Nothing,
       queryStringParameters = Prelude.Nothing}
instance ToResourceProperties PipeTargetHttpParametersProperty where
  toResourceProperties PipeTargetHttpParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetHttpParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
                            (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
                            (JSON..=) "QueryStringParameters"
                              Prelude.<$> queryStringParameters])}
instance JSON.ToJSON PipeTargetHttpParametersProperty where
  toJSON PipeTargetHttpParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderParameters" Prelude.<$> headerParameters,
               (JSON..=) "PathParameterValues" Prelude.<$> pathParameterValues,
               (JSON..=) "QueryStringParameters"
                 Prelude.<$> queryStringParameters]))
instance Property "HeaderParameters" PipeTargetHttpParametersProperty where
  type PropertyType "HeaderParameters" PipeTargetHttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeTargetHttpParametersProperty {..}
    = PipeTargetHttpParametersProperty
        {headerParameters = Prelude.pure newValue, ..}
instance Property "PathParameterValues" PipeTargetHttpParametersProperty where
  type PropertyType "PathParameterValues" PipeTargetHttpParametersProperty = ValueList Prelude.Text
  set newValue PipeTargetHttpParametersProperty {..}
    = PipeTargetHttpParametersProperty
        {pathParameterValues = Prelude.pure newValue, ..}
instance Property "QueryStringParameters" PipeTargetHttpParametersProperty where
  type PropertyType "QueryStringParameters" PipeTargetHttpParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PipeTargetHttpParametersProperty {..}
    = PipeTargetHttpParametersProperty
        {queryStringParameters = Prelude.pure newValue, ..}