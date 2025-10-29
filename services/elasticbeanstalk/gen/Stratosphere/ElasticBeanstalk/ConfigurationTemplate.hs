module Stratosphere.ElasticBeanstalk.ConfigurationTemplate (
        module Exports, ConfigurationTemplate(..), mkConfigurationTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.ConfigurationTemplate.ConfigurationOptionSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.ConfigurationTemplate.SourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationTemplate
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html>
    ConfigurationTemplate {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-applicationname>
                           applicationName :: (Value Prelude.Text),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-description>
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-environmentid>
                           environmentId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-optionsettings>
                           optionSettings :: (Prelude.Maybe [ConfigurationOptionSettingProperty]),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-platformarn>
                           platformArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-solutionstackname>
                           solutionStackName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration>
                           sourceConfiguration :: (Prelude.Maybe SourceConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationTemplate ::
  Value Prelude.Text -> ConfigurationTemplate
mkConfigurationTemplate applicationName
  = ConfigurationTemplate
      {applicationName = applicationName, description = Prelude.Nothing,
       environmentId = Prelude.Nothing, optionSettings = Prelude.Nothing,
       platformArn = Prelude.Nothing, solutionStackName = Prelude.Nothing,
       sourceConfiguration = Prelude.Nothing}
instance ToResourceProperties ConfigurationTemplate where
  toResourceProperties ConfigurationTemplate {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::ConfigurationTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationName" JSON..= applicationName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnvironmentId" Prelude.<$> environmentId,
                               (JSON..=) "OptionSettings" Prelude.<$> optionSettings,
                               (JSON..=) "PlatformArn" Prelude.<$> platformArn,
                               (JSON..=) "SolutionStackName" Prelude.<$> solutionStackName,
                               (JSON..=) "SourceConfiguration" Prelude.<$> sourceConfiguration]))}
instance JSON.ToJSON ConfigurationTemplate where
  toJSON ConfigurationTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationName" JSON..= applicationName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnvironmentId" Prelude.<$> environmentId,
                  (JSON..=) "OptionSettings" Prelude.<$> optionSettings,
                  (JSON..=) "PlatformArn" Prelude.<$> platformArn,
                  (JSON..=) "SolutionStackName" Prelude.<$> solutionStackName,
                  (JSON..=) "SourceConfiguration" Prelude.<$> sourceConfiguration])))
instance Property "ApplicationName" ConfigurationTemplate where
  type PropertyType "ApplicationName" ConfigurationTemplate = Value Prelude.Text
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate {applicationName = newValue, ..}
instance Property "Description" ConfigurationTemplate where
  type PropertyType "Description" ConfigurationTemplate = Value Prelude.Text
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate {description = Prelude.pure newValue, ..}
instance Property "EnvironmentId" ConfigurationTemplate where
  type PropertyType "EnvironmentId" ConfigurationTemplate = Value Prelude.Text
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate {environmentId = Prelude.pure newValue, ..}
instance Property "OptionSettings" ConfigurationTemplate where
  type PropertyType "OptionSettings" ConfigurationTemplate = [ConfigurationOptionSettingProperty]
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate
        {optionSettings = Prelude.pure newValue, ..}
instance Property "PlatformArn" ConfigurationTemplate where
  type PropertyType "PlatformArn" ConfigurationTemplate = Value Prelude.Text
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate {platformArn = Prelude.pure newValue, ..}
instance Property "SolutionStackName" ConfigurationTemplate where
  type PropertyType "SolutionStackName" ConfigurationTemplate = Value Prelude.Text
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate
        {solutionStackName = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" ConfigurationTemplate where
  type PropertyType "SourceConfiguration" ConfigurationTemplate = SourceConfigurationProperty
  set newValue ConfigurationTemplate {..}
    = ConfigurationTemplate
        {sourceConfiguration = Prelude.pure newValue, ..}