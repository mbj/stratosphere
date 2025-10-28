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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmenthttpparameters.html>
    PipeEnrichmentHttpParametersProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmenthttpparameters.html#cfn-pipes-pipe-pipeenrichmenthttpparameters-headerparameters>
                                          headerParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmenthttpparameters.html#cfn-pipes-pipe-pipeenrichmenthttpparameters-pathparametervalues>
                                          pathParameterValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmenthttpparameters.html#cfn-pipes-pipe-pipeenrichmenthttpparameters-querystringparameters>
                                          queryStringParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeEnrichmentHttpParametersProperty ::
  PipeEnrichmentHttpParametersProperty
mkPipeEnrichmentHttpParametersProperty
  = PipeEnrichmentHttpParametersProperty
      {haddock_workaround_ = (), headerParameters = Prelude.Nothing,
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