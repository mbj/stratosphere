module Stratosphere.Pipes.Pipe (
        module Exports, Pipe(..), mkPipe
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeEnrichmentParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Pipe
  = Pipe {description :: (Prelude.Maybe (Value Prelude.Text)),
          desiredState :: (Prelude.Maybe (Value Prelude.Text)),
          enrichment :: (Prelude.Maybe (Value Prelude.Text)),
          enrichmentParameters :: (Prelude.Maybe PipeEnrichmentParametersProperty),
          name :: (Prelude.Maybe (Value Prelude.Text)),
          roleArn :: (Value Prelude.Text),
          source :: (Value Prelude.Text),
          sourceParameters :: (Prelude.Maybe PipeSourceParametersProperty),
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
          target :: (Value Prelude.Text),
          targetParameters :: (Prelude.Maybe PipeTargetParametersProperty)}
mkPipe ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Pipe
mkPipe roleArn source target
  = Pipe
      {roleArn = roleArn, source = source, target = target,
       description = Prelude.Nothing, desiredState = Prelude.Nothing,
       enrichment = Prelude.Nothing,
       enrichmentParameters = Prelude.Nothing, name = Prelude.Nothing,
       sourceParameters = Prelude.Nothing, tags = Prelude.Nothing,
       targetParameters = Prelude.Nothing}
instance ToResourceProperties Pipe where
  toResourceProperties Pipe {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "Source" JSON..= source,
                            "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DesiredState" Prelude.<$> desiredState,
                               (JSON..=) "Enrichment" Prelude.<$> enrichment,
                               (JSON..=) "EnrichmentParameters" Prelude.<$> enrichmentParameters,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SourceParameters" Prelude.<$> sourceParameters,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetParameters" Prelude.<$> targetParameters]))}
instance JSON.ToJSON Pipe where
  toJSON Pipe {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "Source" JSON..= source,
               "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DesiredState" Prelude.<$> desiredState,
                  (JSON..=) "Enrichment" Prelude.<$> enrichment,
                  (JSON..=) "EnrichmentParameters" Prelude.<$> enrichmentParameters,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SourceParameters" Prelude.<$> sourceParameters,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetParameters" Prelude.<$> targetParameters])))
instance Property "Description" Pipe where
  type PropertyType "Description" Pipe = Value Prelude.Text
  set newValue Pipe {..}
    = Pipe {description = Prelude.pure newValue, ..}
instance Property "DesiredState" Pipe where
  type PropertyType "DesiredState" Pipe = Value Prelude.Text
  set newValue Pipe {..}
    = Pipe {desiredState = Prelude.pure newValue, ..}
instance Property "Enrichment" Pipe where
  type PropertyType "Enrichment" Pipe = Value Prelude.Text
  set newValue Pipe {..}
    = Pipe {enrichment = Prelude.pure newValue, ..}
instance Property "EnrichmentParameters" Pipe where
  type PropertyType "EnrichmentParameters" Pipe = PipeEnrichmentParametersProperty
  set newValue Pipe {..}
    = Pipe {enrichmentParameters = Prelude.pure newValue, ..}
instance Property "Name" Pipe where
  type PropertyType "Name" Pipe = Value Prelude.Text
  set newValue Pipe {..} = Pipe {name = Prelude.pure newValue, ..}
instance Property "RoleArn" Pipe where
  type PropertyType "RoleArn" Pipe = Value Prelude.Text
  set newValue Pipe {..} = Pipe {roleArn = newValue, ..}
instance Property "Source" Pipe where
  type PropertyType "Source" Pipe = Value Prelude.Text
  set newValue Pipe {..} = Pipe {source = newValue, ..}
instance Property "SourceParameters" Pipe where
  type PropertyType "SourceParameters" Pipe = PipeSourceParametersProperty
  set newValue Pipe {..}
    = Pipe {sourceParameters = Prelude.pure newValue, ..}
instance Property "Tags" Pipe where
  type PropertyType "Tags" Pipe = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Pipe {..} = Pipe {tags = Prelude.pure newValue, ..}
instance Property "Target" Pipe where
  type PropertyType "Target" Pipe = Value Prelude.Text
  set newValue Pipe {..} = Pipe {target = newValue, ..}
instance Property "TargetParameters" Pipe where
  type PropertyType "TargetParameters" Pipe = PipeTargetParametersProperty
  set newValue Pipe {..}
    = Pipe {targetParameters = Prelude.pure newValue, ..}