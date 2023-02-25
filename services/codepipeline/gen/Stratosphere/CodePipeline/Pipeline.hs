module Stratosphere.CodePipeline.Pipeline (
        module Exports, Pipeline(..), mkPipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ArtifactStoreProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ArtifactStoreMapProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.StageDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.StageTransitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Pipeline
  = Pipeline {artifactStore :: (Prelude.Maybe ArtifactStoreProperty),
              artifactStores :: (Prelude.Maybe [ArtifactStoreMapProperty]),
              disableInboundStageTransitions :: (Prelude.Maybe [StageTransitionProperty]),
              name :: (Prelude.Maybe (Value Prelude.Text)),
              restartExecutionOnUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
              roleArn :: (Value Prelude.Text),
              stages :: [StageDeclarationProperty],
              tags :: (Prelude.Maybe [Tag])}
mkPipeline ::
  Value Prelude.Text -> [StageDeclarationProperty] -> Pipeline
mkPipeline roleArn stages
  = Pipeline
      {roleArn = roleArn, stages = stages,
       artifactStore = Prelude.Nothing, artifactStores = Prelude.Nothing,
       disableInboundStageTransitions = Prelude.Nothing,
       name = Prelude.Nothing, restartExecutionOnUpdate = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Pipeline where
  toResourceProperties Pipeline {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "Stages" JSON..= stages]
                           (Prelude.catMaybes
                              [(JSON..=) "ArtifactStore" Prelude.<$> artifactStore,
                               (JSON..=) "ArtifactStores" Prelude.<$> artifactStores,
                               (JSON..=) "DisableInboundStageTransitions"
                                 Prelude.<$> disableInboundStageTransitions,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RestartExecutionOnUpdate"
                                 Prelude.<$> restartExecutionOnUpdate,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Pipeline where
  toJSON Pipeline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "Stages" JSON..= stages]
              (Prelude.catMaybes
                 [(JSON..=) "ArtifactStore" Prelude.<$> artifactStore,
                  (JSON..=) "ArtifactStores" Prelude.<$> artifactStores,
                  (JSON..=) "DisableInboundStageTransitions"
                    Prelude.<$> disableInboundStageTransitions,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RestartExecutionOnUpdate"
                    Prelude.<$> restartExecutionOnUpdate,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ArtifactStore" Pipeline where
  type PropertyType "ArtifactStore" Pipeline = ArtifactStoreProperty
  set newValue Pipeline {..}
    = Pipeline {artifactStore = Prelude.pure newValue, ..}
instance Property "ArtifactStores" Pipeline where
  type PropertyType "ArtifactStores" Pipeline = [ArtifactStoreMapProperty]
  set newValue Pipeline {..}
    = Pipeline {artifactStores = Prelude.pure newValue, ..}
instance Property "DisableInboundStageTransitions" Pipeline where
  type PropertyType "DisableInboundStageTransitions" Pipeline = [StageTransitionProperty]
  set newValue Pipeline {..}
    = Pipeline
        {disableInboundStageTransitions = Prelude.pure newValue, ..}
instance Property "Name" Pipeline where
  type PropertyType "Name" Pipeline = Value Prelude.Text
  set newValue Pipeline {..}
    = Pipeline {name = Prelude.pure newValue, ..}
instance Property "RestartExecutionOnUpdate" Pipeline where
  type PropertyType "RestartExecutionOnUpdate" Pipeline = Value Prelude.Bool
  set newValue Pipeline {..}
    = Pipeline {restartExecutionOnUpdate = Prelude.pure newValue, ..}
instance Property "RoleArn" Pipeline where
  type PropertyType "RoleArn" Pipeline = Value Prelude.Text
  set newValue Pipeline {..} = Pipeline {roleArn = newValue, ..}
instance Property "Stages" Pipeline where
  type PropertyType "Stages" Pipeline = [StageDeclarationProperty]
  set newValue Pipeline {..} = Pipeline {stages = newValue, ..}
instance Property "Tags" Pipeline where
  type PropertyType "Tags" Pipeline = [Tag]
  set newValue Pipeline {..}
    = Pipeline {tags = Prelude.pure newValue, ..}