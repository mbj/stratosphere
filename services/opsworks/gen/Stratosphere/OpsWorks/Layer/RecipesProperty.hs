module Stratosphere.OpsWorks.Layer.RecipesProperty (
        RecipesProperty(..), mkRecipesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecipesProperty
  = RecipesProperty {configure :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                     deploy :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                     setup :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                     shutdown :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                     undeploy :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkRecipesProperty :: RecipesProperty
mkRecipesProperty
  = RecipesProperty
      {configure = Prelude.Nothing, deploy = Prelude.Nothing,
       setup = Prelude.Nothing, shutdown = Prelude.Nothing,
       undeploy = Prelude.Nothing}
instance ToResourceProperties RecipesProperty where
  toResourceProperties RecipesProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.Recipes",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configure" Prelude.<$> configure,
                            (JSON..=) "Deploy" Prelude.<$> deploy,
                            (JSON..=) "Setup" Prelude.<$> setup,
                            (JSON..=) "Shutdown" Prelude.<$> shutdown,
                            (JSON..=) "Undeploy" Prelude.<$> undeploy])}
instance JSON.ToJSON RecipesProperty where
  toJSON RecipesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configure" Prelude.<$> configure,
               (JSON..=) "Deploy" Prelude.<$> deploy,
               (JSON..=) "Setup" Prelude.<$> setup,
               (JSON..=) "Shutdown" Prelude.<$> shutdown,
               (JSON..=) "Undeploy" Prelude.<$> undeploy]))
instance Property "Configure" RecipesProperty where
  type PropertyType "Configure" RecipesProperty = ValueList (Value Prelude.Text)
  set newValue RecipesProperty {..}
    = RecipesProperty {configure = Prelude.pure newValue, ..}
instance Property "Deploy" RecipesProperty where
  type PropertyType "Deploy" RecipesProperty = ValueList (Value Prelude.Text)
  set newValue RecipesProperty {..}
    = RecipesProperty {deploy = Prelude.pure newValue, ..}
instance Property "Setup" RecipesProperty where
  type PropertyType "Setup" RecipesProperty = ValueList (Value Prelude.Text)
  set newValue RecipesProperty {..}
    = RecipesProperty {setup = Prelude.pure newValue, ..}
instance Property "Shutdown" RecipesProperty where
  type PropertyType "Shutdown" RecipesProperty = ValueList (Value Prelude.Text)
  set newValue RecipesProperty {..}
    = RecipesProperty {shutdown = Prelude.pure newValue, ..}
instance Property "Undeploy" RecipesProperty where
  type PropertyType "Undeploy" RecipesProperty = ValueList (Value Prelude.Text)
  set newValue RecipesProperty {..}
    = RecipesProperty {undeploy = Prelude.pure newValue, ..}