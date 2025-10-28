module Stratosphere.ImageBuilder.DistributionConfiguration.LaunchTemplateConfigurationProperty (
        LaunchTemplateConfigurationProperty(..),
        mkLaunchTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchtemplateconfiguration.html>
    LaunchTemplateConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchtemplateconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchtemplateconfiguration-accountid>
                                         accountId :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchtemplateconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchtemplateconfiguration-launchtemplateid>
                                         launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchtemplateconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchtemplateconfiguration-setdefaultversion>
                                         setDefaultVersion :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateConfigurationProperty ::
  LaunchTemplateConfigurationProperty
mkLaunchTemplateConfigurationProperty
  = LaunchTemplateConfigurationProperty
      {haddock_workaround_ = (), accountId = Prelude.Nothing,
       launchTemplateId = Prelude.Nothing,
       setDefaultVersion = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateConfigurationProperty where
  toResourceProperties LaunchTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.LaunchTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountId" Prelude.<$> accountId,
                            (JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                            (JSON..=) "SetDefaultVersion" Prelude.<$> setDefaultVersion])}
instance JSON.ToJSON LaunchTemplateConfigurationProperty where
  toJSON LaunchTemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountId" Prelude.<$> accountId,
               (JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
               (JSON..=) "SetDefaultVersion" Prelude.<$> setDefaultVersion]))
instance Property "AccountId" LaunchTemplateConfigurationProperty where
  type PropertyType "AccountId" LaunchTemplateConfigurationProperty = Value Prelude.Text
  set newValue LaunchTemplateConfigurationProperty {..}
    = LaunchTemplateConfigurationProperty
        {accountId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateId" LaunchTemplateConfigurationProperty where
  type PropertyType "LaunchTemplateId" LaunchTemplateConfigurationProperty = Value Prelude.Text
  set newValue LaunchTemplateConfigurationProperty {..}
    = LaunchTemplateConfigurationProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "SetDefaultVersion" LaunchTemplateConfigurationProperty where
  type PropertyType "SetDefaultVersion" LaunchTemplateConfigurationProperty = Value Prelude.Bool
  set newValue LaunchTemplateConfigurationProperty {..}
    = LaunchTemplateConfigurationProperty
        {setDefaultVersion = Prelude.pure newValue, ..}