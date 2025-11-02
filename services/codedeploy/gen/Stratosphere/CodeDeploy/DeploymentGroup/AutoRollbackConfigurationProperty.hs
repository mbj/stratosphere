module Stratosphere.CodeDeploy.DeploymentGroup.AutoRollbackConfigurationProperty (
        AutoRollbackConfigurationProperty(..),
        mkAutoRollbackConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoRollbackConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html>
    AutoRollbackConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-enabled>
                                       enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-events>
                                       events :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoRollbackConfigurationProperty ::
  AutoRollbackConfigurationProperty
mkAutoRollbackConfigurationProperty
  = AutoRollbackConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       events = Prelude.Nothing}
instance ToResourceProperties AutoRollbackConfigurationProperty where
  toResourceProperties AutoRollbackConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Events" Prelude.<$> events])}
instance JSON.ToJSON AutoRollbackConfigurationProperty where
  toJSON AutoRollbackConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Events" Prelude.<$> events]))
instance Property "Enabled" AutoRollbackConfigurationProperty where
  type PropertyType "Enabled" AutoRollbackConfigurationProperty = Value Prelude.Bool
  set newValue AutoRollbackConfigurationProperty {..}
    = AutoRollbackConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "Events" AutoRollbackConfigurationProperty where
  type PropertyType "Events" AutoRollbackConfigurationProperty = ValueList Prelude.Text
  set newValue AutoRollbackConfigurationProperty {..}
    = AutoRollbackConfigurationProperty
        {events = Prelude.pure newValue, ..}