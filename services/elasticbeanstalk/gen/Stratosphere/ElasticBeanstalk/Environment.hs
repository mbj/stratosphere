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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html>
    Environment {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-applicationname>
                 applicationName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-cnameprefix>
                 cNAMEPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-environmentname>
                 environmentName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-operationsrole>
                 operationsRole :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-optionsettings>
                 optionSettings :: (Prelude.Maybe [OptionSettingProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-platformarn>
                 platformArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-solutionstackname>
                 solutionStackName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-templatename>
                 templateName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-tier>
                 tier :: (Prelude.Maybe TierProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-environment.html#cfn-elasticbeanstalk-environment-versionlabel>
                 versionLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment :: Value Prelude.Text -> Environment
mkEnvironment applicationName
  = Environment
      {haddock_workaround_ = (), applicationName = applicationName,
       cNAMEPrefix = Prelude.Nothing, description = Prelude.Nothing,
       environmentName = Prelude.Nothing,
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