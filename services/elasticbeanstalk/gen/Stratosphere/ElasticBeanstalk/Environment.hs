module Stratosphere.ElasticBeanstalk.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.Environment.OptionSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.Environment.TierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Environment
  = Environment {applicationName :: (Value Prelude.Text),
                 cNAMEPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 environmentName :: (Prelude.Maybe (Value Prelude.Text)),
                 operationsRole :: (Prelude.Maybe (Value Prelude.Text)),
                 optionSettings :: (Prelude.Maybe [OptionSettingProperty]),
                 platformArn :: (Prelude.Maybe (Value Prelude.Text)),
                 solutionStackName :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 templateName :: (Prelude.Maybe (Value Prelude.Text)),
                 tier :: (Prelude.Maybe TierProperty),
                 versionLabel :: (Prelude.Maybe (Value Prelude.Text))}
mkEnvironment :: Value Prelude.Text -> Environment
mkEnvironment applicationName
  = Environment
      {applicationName = applicationName, cNAMEPrefix = Prelude.Nothing,
       description = Prelude.Nothing, environmentName = Prelude.Nothing,
       operationsRole = Prelude.Nothing, optionSettings = Prelude.Nothing,
       platformArn = Prelude.Nothing, solutionStackName = Prelude.Nothing,
       tags = Prelude.Nothing, templateName = Prelude.Nothing,
       tier = Prelude.Nothing, versionLabel = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Environment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationName" JSON..= applicationName]
                           (Prelude.catMaybes
                              [(JSON..=) "CNAMEPrefix" Prelude.<$> cNAMEPrefix,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                               (JSON..=) "OperationsRole" Prelude.<$> operationsRole,
                               (JSON..=) "OptionSettings" Prelude.<$> optionSettings,
                               (JSON..=) "PlatformArn" Prelude.<$> platformArn,
                               (JSON..=) "SolutionStackName" Prelude.<$> solutionStackName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateName" Prelude.<$> templateName,
                               (JSON..=) "Tier" Prelude.<$> tier,
                               (JSON..=) "VersionLabel" Prelude.<$> versionLabel]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationName" JSON..= applicationName]
              (Prelude.catMaybes
                 [(JSON..=) "CNAMEPrefix" Prelude.<$> cNAMEPrefix,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                  (JSON..=) "OperationsRole" Prelude.<$> operationsRole,
                  (JSON..=) "OptionSettings" Prelude.<$> optionSettings,
                  (JSON..=) "PlatformArn" Prelude.<$> platformArn,
                  (JSON..=) "SolutionStackName" Prelude.<$> solutionStackName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateName" Prelude.<$> templateName,
                  (JSON..=) "Tier" Prelude.<$> tier,
                  (JSON..=) "VersionLabel" Prelude.<$> versionLabel])))
instance Property "ApplicationName" Environment where
  type PropertyType "ApplicationName" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {applicationName = newValue, ..}
instance Property "CNAMEPrefix" Environment where
  type PropertyType "CNAMEPrefix" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {cNAMEPrefix = Prelude.pure newValue, ..}
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "EnvironmentName" Environment where
  type PropertyType "EnvironmentName" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {environmentName = Prelude.pure newValue, ..}
instance Property "OperationsRole" Environment where
  type PropertyType "OperationsRole" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {operationsRole = Prelude.pure newValue, ..}
instance Property "OptionSettings" Environment where
  type PropertyType "OptionSettings" Environment = [OptionSettingProperty]
  set newValue Environment {..}
    = Environment {optionSettings = Prelude.pure newValue, ..}
instance Property "PlatformArn" Environment where
  type PropertyType "PlatformArn" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {platformArn = Prelude.pure newValue, ..}
instance Property "SolutionStackName" Environment where
  type PropertyType "SolutionStackName" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {solutionStackName = Prelude.pure newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}
instance Property "TemplateName" Environment where
  type PropertyType "TemplateName" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {templateName = Prelude.pure newValue, ..}
instance Property "Tier" Environment where
  type PropertyType "Tier" Environment = TierProperty
  set newValue Environment {..}
    = Environment {tier = Prelude.pure newValue, ..}
instance Property "VersionLabel" Environment where
  type PropertyType "VersionLabel" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {versionLabel = Prelude.pure newValue, ..}