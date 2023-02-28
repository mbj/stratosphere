module Stratosphere.OpsWorks.Stack.ChefConfigurationProperty (
        ChefConfigurationProperty(..), mkChefConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChefConfigurationProperty
  = ChefConfigurationProperty {berkshelfVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               manageBerkshelf :: (Prelude.Maybe (Value Prelude.Bool))}
mkChefConfigurationProperty :: ChefConfigurationProperty
mkChefConfigurationProperty
  = ChefConfigurationProperty
      {berkshelfVersion = Prelude.Nothing,
       manageBerkshelf = Prelude.Nothing}
instance ToResourceProperties ChefConfigurationProperty where
  toResourceProperties ChefConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack.ChefConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BerkshelfVersion" Prelude.<$> berkshelfVersion,
                            (JSON..=) "ManageBerkshelf" Prelude.<$> manageBerkshelf])}
instance JSON.ToJSON ChefConfigurationProperty where
  toJSON ChefConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BerkshelfVersion" Prelude.<$> berkshelfVersion,
               (JSON..=) "ManageBerkshelf" Prelude.<$> manageBerkshelf]))
instance Property "BerkshelfVersion" ChefConfigurationProperty where
  type PropertyType "BerkshelfVersion" ChefConfigurationProperty = Value Prelude.Text
  set newValue ChefConfigurationProperty {..}
    = ChefConfigurationProperty
        {berkshelfVersion = Prelude.pure newValue, ..}
instance Property "ManageBerkshelf" ChefConfigurationProperty where
  type PropertyType "ManageBerkshelf" ChefConfigurationProperty = Value Prelude.Bool
  set newValue ChefConfigurationProperty {..}
    = ChefConfigurationProperty
        {manageBerkshelf = Prelude.pure newValue, ..}