module Stratosphere.OpsWorks.Stack.ChefConfigurationProperty (
        ChefConfigurationProperty(..), mkChefConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChefConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html>
    ChefConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion>
                               berkshelfVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion>
                               manageBerkshelf :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChefConfigurationProperty :: ChefConfigurationProperty
mkChefConfigurationProperty
  = ChefConfigurationProperty
      {haddock_workaround_ = (), berkshelfVersion = Prelude.Nothing,
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