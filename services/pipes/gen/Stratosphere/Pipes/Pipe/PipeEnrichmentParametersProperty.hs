module Stratosphere.Pipes.Pipe.PipeEnrichmentParametersProperty (
        module Exports, PipeEnrichmentParametersProperty(..),
        mkPipeEnrichmentParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeEnrichmentHttpParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeEnrichmentParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmentparameters.html>
    PipeEnrichmentParametersProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmentparameters.html#cfn-pipes-pipe-pipeenrichmentparameters-httpparameters>
                                      httpParameters :: (Prelude.Maybe PipeEnrichmentHttpParametersProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipeenrichmentparameters.html#cfn-pipes-pipe-pipeenrichmentparameters-inputtemplate>
                                      inputTemplate :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeEnrichmentParametersProperty ::
  PipeEnrichmentParametersProperty
mkPipeEnrichmentParametersProperty
  = PipeEnrichmentParametersProperty
      {haddock_workaround_ = (), httpParameters = Prelude.Nothing,
       inputTemplate = Prelude.Nothing}
instance ToResourceProperties PipeEnrichmentParametersProperty where
  toResourceProperties PipeEnrichmentParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeEnrichmentParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpParameters" Prelude.<$> httpParameters,
                            (JSON..=) "InputTemplate" Prelude.<$> inputTemplate])}
instance JSON.ToJSON PipeEnrichmentParametersProperty where
  toJSON PipeEnrichmentParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpParameters" Prelude.<$> httpParameters,
               (JSON..=) "InputTemplate" Prelude.<$> inputTemplate]))
instance Property "HttpParameters" PipeEnrichmentParametersProperty where
  type PropertyType "HttpParameters" PipeEnrichmentParametersProperty = PipeEnrichmentHttpParametersProperty
  set newValue PipeEnrichmentParametersProperty {..}
    = PipeEnrichmentParametersProperty
        {httpParameters = Prelude.pure newValue, ..}
instance Property "InputTemplate" PipeEnrichmentParametersProperty where
  type PropertyType "InputTemplate" PipeEnrichmentParametersProperty = Value Prelude.Text
  set newValue PipeEnrichmentParametersProperty {..}
    = PipeEnrichmentParametersProperty
        {inputTemplate = Prelude.pure newValue, ..}