module Stratosphere.CloudFormation.StackSet.AutoDeploymentProperty (
        AutoDeploymentProperty(..), mkAutoDeploymentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoDeploymentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-autodeployment.html>
    AutoDeploymentProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-autodeployment.html#cfn-cloudformation-stackset-autodeployment-enabled>
                            enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-autodeployment.html#cfn-cloudformation-stackset-autodeployment-retainstacksonaccountremoval>
                            retainStacksOnAccountRemoval :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoDeploymentProperty :: AutoDeploymentProperty
mkAutoDeploymentProperty
  = AutoDeploymentProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       retainStacksOnAccountRemoval = Prelude.Nothing}
instance ToResourceProperties AutoDeploymentProperty where
  toResourceProperties AutoDeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.AutoDeployment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "RetainStacksOnAccountRemoval"
                              Prelude.<$> retainStacksOnAccountRemoval])}
instance JSON.ToJSON AutoDeploymentProperty where
  toJSON AutoDeploymentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "RetainStacksOnAccountRemoval"
                 Prelude.<$> retainStacksOnAccountRemoval]))
instance Property "Enabled" AutoDeploymentProperty where
  type PropertyType "Enabled" AutoDeploymentProperty = Value Prelude.Bool
  set newValue AutoDeploymentProperty {..}
    = AutoDeploymentProperty {enabled = Prelude.pure newValue, ..}
instance Property "RetainStacksOnAccountRemoval" AutoDeploymentProperty where
  type PropertyType "RetainStacksOnAccountRemoval" AutoDeploymentProperty = Value Prelude.Bool
  set newValue AutoDeploymentProperty {..}
    = AutoDeploymentProperty
        {retainStacksOnAccountRemoval = Prelude.pure newValue, ..}