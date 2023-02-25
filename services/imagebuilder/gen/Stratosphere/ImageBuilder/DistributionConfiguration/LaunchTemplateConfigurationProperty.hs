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
  = LaunchTemplateConfigurationProperty {accountId :: (Prelude.Maybe (Value Prelude.Text)),
                                         launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                         setDefaultVersion :: (Prelude.Maybe (Value Prelude.Bool))}
mkLaunchTemplateConfigurationProperty ::
  LaunchTemplateConfigurationProperty
mkLaunchTemplateConfigurationProperty
  = LaunchTemplateConfigurationProperty
      {accountId = Prelude.Nothing, launchTemplateId = Prelude.Nothing,
       setDefaultVersion = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateConfigurationProperty where
  toResourceProperties LaunchTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.LaunchTemplateConfiguration",
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