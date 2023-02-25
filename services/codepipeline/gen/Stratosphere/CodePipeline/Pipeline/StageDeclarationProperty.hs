module Stratosphere.CodePipeline.Pipeline.StageDeclarationProperty (
        module Exports, StageDeclarationProperty(..),
        mkStageDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ActionDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.BlockerDeclarationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageDeclarationProperty
  = StageDeclarationProperty {actions :: [ActionDeclarationProperty],
                              blockers :: (Prelude.Maybe [BlockerDeclarationProperty]),
                              name :: (Value Prelude.Text)}
mkStageDeclarationProperty ::
  [ActionDeclarationProperty]
  -> Value Prelude.Text -> StageDeclarationProperty
mkStageDeclarationProperty actions name
  = StageDeclarationProperty
      {actions = actions, name = name, blockers = Prelude.Nothing}
instance ToResourceProperties StageDeclarationProperty where
  toResourceProperties StageDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.StageDeclaration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Blockers" Prelude.<$> blockers]))}
instance JSON.ToJSON StageDeclarationProperty where
  toJSON StageDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Blockers" Prelude.<$> blockers])))
instance Property "Actions" StageDeclarationProperty where
  type PropertyType "Actions" StageDeclarationProperty = [ActionDeclarationProperty]
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {actions = newValue, ..}
instance Property "Blockers" StageDeclarationProperty where
  type PropertyType "Blockers" StageDeclarationProperty = [BlockerDeclarationProperty]
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {blockers = Prelude.pure newValue, ..}
instance Property "Name" StageDeclarationProperty where
  type PropertyType "Name" StageDeclarationProperty = Value Prelude.Text
  set newValue StageDeclarationProperty {..}
    = StageDeclarationProperty {name = newValue, ..}