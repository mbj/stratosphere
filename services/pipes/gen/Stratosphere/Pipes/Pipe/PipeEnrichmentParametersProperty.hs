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
  = PipeEnrichmentParametersProperty {httpParameters :: (Prelude.Maybe PipeEnrichmentHttpParametersProperty),
                                      inputTemplate :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeEnrichmentParametersProperty ::
  PipeEnrichmentParametersProperty
mkPipeEnrichmentParametersProperty
  = PipeEnrichmentParametersProperty
      {httpParameters = Prelude.Nothing, inputTemplate = Prelude.Nothing}
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