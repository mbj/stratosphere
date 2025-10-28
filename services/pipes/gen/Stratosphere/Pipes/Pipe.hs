module Stratosphere.Pipes.Pipe (
        module Exports, Pipe(..), mkPipe
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeEnrichmentParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeLogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeTargetParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Pipe
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html>
    Pipe {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-desiredstate>
          desiredState :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-enrichment>
          enrichment :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-enrichmentparameters>
          enrichmentParameters :: (Prelude.Maybe PipeEnrichmentParametersProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-kmskeyidentifier>
          kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-logconfiguration>
          logConfiguration :: (Prelude.Maybe PipeLogConfigurationProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-name>
          name :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-rolearn>
          roleArn :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-source>
          source :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-sourceparameters>
          sourceParameters :: (Prelude.Maybe PipeSourceParametersProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-tags>
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-target>
          target :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pipes-pipe.html#cfn-pipes-pipe-targetparameters>
          targetParameters :: (Prelude.Maybe PipeTargetParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipe ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Pipe
mkPipe roleArn source target
  = Pipe
      {haddock_workaround_ = (), roleArn = roleArn, source = source,
       target = target, description = Prelude.Nothing,
       desiredState = Prelude.Nothing, enrichment = Prelude.Nothing,
       enrichmentParameters = Prelude.Nothing,
       kmsKeyIdentifier = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, name = Prelude.Nothing,
       sourceParameters = Prelude.Nothing, tags = Prelude.Nothing,
       targetParameters = Prelude.Nothing}
instance ToResourceProperties Pipe where
  toResourceProperties Pipe {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "Source" JSON..= source,
                            "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DesiredState" Prelude.<$> desiredState,
                               (JSON..=) "Enrichment" Prelude.<$> enrichment,
                               (JSON..=) "EnrichmentParameters" Prelude.<$> enrichmentParameters,
                               (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
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
                  (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
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
instance Property "KmsKeyIdentifier" Pipe where
  type PropertyType "KmsKeyIdentifier" Pipe = Value Prelude.Text
  set newValue Pipe {..}
    = Pipe {kmsKeyIdentifier = Prelude.pure newValue, ..}
instance Property "LogConfiguration" Pipe where
  type PropertyType "LogConfiguration" Pipe = PipeLogConfigurationProperty
  set newValue Pipe {..}
    = Pipe {logConfiguration = Prelude.pure newValue, ..}
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