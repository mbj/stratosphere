module Stratosphere.OpsWorks.Layer.RecipesProperty (
        RecipesProperty(..), mkRecipesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecipesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html>
    RecipesProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-configure>
                     configure :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-deploy>
                     deploy :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-setup>
                     setup :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-shutdown>
                     shutdown :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-undeploy>
                     undeploy :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecipesProperty :: RecipesProperty
mkRecipesProperty
  = RecipesProperty
      {haddock_workaround_ = (), configure = Prelude.Nothing,
       deploy = Prelude.Nothing, setup = Prelude.Nothing,
       shutdown = Prelude.Nothing, undeploy = Prelude.Nothing}
instance ToResourceProperties RecipesProperty where
  toResourceProperties RecipesProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.Recipes",
         supportsTags = Prelude.False,
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
  type PropertyType "Configure" RecipesProperty = ValueList Prelude.Text
  set newValue RecipesProperty {..}
    = RecipesProperty {configure = Prelude.pure newValue, ..}
instance Property "Deploy" RecipesProperty where
  type PropertyType "Deploy" RecipesProperty = ValueList Prelude.Text
  set newValue RecipesProperty {..}
    = RecipesProperty {deploy = Prelude.pure newValue, ..}
instance Property "Setup" RecipesProperty where
  type PropertyType "Setup" RecipesProperty = ValueList Prelude.Text
  set newValue RecipesProperty {..}
    = RecipesProperty {setup = Prelude.pure newValue, ..}
instance Property "Shutdown" RecipesProperty where
  type PropertyType "Shutdown" RecipesProperty = ValueList Prelude.Text
  set newValue RecipesProperty {..}
    = RecipesProperty {shutdown = Prelude.pure newValue, ..}
instance Property "Undeploy" RecipesProperty where
  type PropertyType "Undeploy" RecipesProperty = ValueList Prelude.Text
  set newValue RecipesProperty {..}
    = RecipesProperty {undeploy = Prelude.pure newValue, ..}