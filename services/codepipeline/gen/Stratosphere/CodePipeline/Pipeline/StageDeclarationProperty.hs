module Stratosphere.CodePipeline.Pipeline.StageDeclarationProperty (
        module Exports, StageDeclarationProperty(..),
        mkStageDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ActionDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.BeforeEntryConditionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.BlockerDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.FailureConditionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.SuccessConditionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageDeclarationProperty
  = StageDeclarationProperty {actions :: [ActionDeclarationProperty],
                              beforeEntry :: (Prelude.Maybe BeforeEntryConditionsProperty),
                              blockers :: (Prelude.Maybe [BlockerDeclarationProperty]),
                              name :: (Value Prelude.Text),
                              onFailure :: (Prelude.Maybe FailureConditionsProperty),
                              onSuccess :: (Prelude.Maybe SuccessConditionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageDeclarationProperty ::
  [ActionDeclarationProperty]
  -> Value Prelude.Text -> StageDeclarationProperty
mkStageDeclarationProperty actions name
  = StageDeclarationProperty
      {actions = actions, name = name, beforeEntry = Prelude.Nothing,
       blockers = Prelude.Nothing, onFailure = Prelude.Nothing,
       onSuccess = Prelude.Nothing}
instance ToResourceProperties StageDeclarationProperty where
  toResourceProperties StageDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.StageDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "BeforeEntry" Prelude.<$> beforeEntry,
                               (JSON..=) "Blockers" Prelude.<$> blockers,
                               (JSON..=) "OnFailure" Prelude.<$> onFailure,
                               (JSON..=) "OnSuccess" Prelude.<$> onSuccess]))}
instance JSON.ToJSON StageDeclarationProperty where
  toJSON StageDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "BeforeEntry" Prelude.<$> beforeEntry,
                  (JSON..=) "Blockers" Prelude.<$> blockers,
                  (JSON..=) "OnFailure" Prelude.<$> onFailure,
                  (JSON..=) "OnSuccess" Prelude.<$> onSuccess])))
instance Property "Actions" StageDeclarationProperty where
  type PropertyType "Actions" StageDeclarationProperty = [ActionDeclarationProperty]
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {actions = newValue, ..}
instance Property "BeforeEntry" StageDeclarationProperty where
  type PropertyType "BeforeEntry" StageDeclarationProperty = BeforeEntryConditionsProperty
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty
        {beforeEntry = Prelude.pure newValue, ..}
instance Property "Blockers" StageDeclarationProperty where
  type PropertyType "Blockers" StageDeclarationProperty = [BlockerDeclarationProperty]
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {blockers = Prelude.pure newValue, ..}
instance Property "Name" StageDeclarationProperty where
  type PropertyType "Name" StageDeclarationProperty = Value Prelude.Text
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {name = newValue, ..}
instance Property "OnFailure" StageDeclarationProperty where
  type PropertyType "OnFailure" StageDeclarationProperty = FailureConditionsProperty
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {onFailure = Prelude.pure newValue, ..}
instance Property "OnSuccess" StageDeclarationProperty where
  type PropertyType "OnSuccess" StageDeclarationProperty = SuccessConditionsProperty
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {onSuccess = Prelude.pure newValue, ..}