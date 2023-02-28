module Stratosphere.GreengrassV2.ComponentVersion (
        module Exports, ComponentVersion(..), mkComponentVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaFunctionRecipeSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentVersion
  = ComponentVersion {inlineRecipe :: (Prelude.Maybe (Value Prelude.Text)),
                      lambdaFunction :: (Prelude.Maybe LambdaFunctionRecipeSourceProperty),
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkComponentVersion :: ComponentVersion
mkComponentVersion
  = ComponentVersion
      {inlineRecipe = Prelude.Nothing, lambdaFunction = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ComponentVersion where
  toResourceProperties ComponentVersion {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InlineRecipe" Prelude.<$> inlineRecipe,
                            (JSON..=) "LambdaFunction" Prelude.<$> lambdaFunction,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ComponentVersion where
  toJSON ComponentVersion {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InlineRecipe" Prelude.<$> inlineRecipe,
               (JSON..=) "LambdaFunction" Prelude.<$> lambdaFunction,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "InlineRecipe" ComponentVersion where
  type PropertyType "InlineRecipe" ComponentVersion = Value Prelude.Text
  set newValue ComponentVersion {..}
    = ComponentVersion {inlineRecipe = Prelude.pure newValue, ..}
instance Property "LambdaFunction" ComponentVersion where
  type PropertyType "LambdaFunction" ComponentVersion = LambdaFunctionRecipeSourceProperty
  set newValue ComponentVersion {..}
    = ComponentVersion {lambdaFunction = Prelude.pure newValue, ..}
instance Property "Tags" ComponentVersion where
  type PropertyType "Tags" ComponentVersion = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComponentVersion {..}
    = ComponentVersion {tags = Prelude.pure newValue, ..}