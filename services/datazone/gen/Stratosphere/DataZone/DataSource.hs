module Stratosphere.DataZone.DataSource (
        module Exports, DataSource(..), mkDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.DataSourceConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.FormInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RecommendationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.ScheduleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html>
    DataSource {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-assetformsinput>
                assetFormsInput :: (Prelude.Maybe [FormInputProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-configuration>
                configuration :: (Prelude.Maybe DataSourceConfigurationInputProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-connectionidentifier>
                connectionIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-domainidentifier>
                domainIdentifier :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-enablesetting>
                enableSetting :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-environmentidentifier>
                environmentIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-projectidentifier>
                projectIdentifier :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-publishonimport>
                publishOnImport :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-recommendation>
                recommendation :: (Prelude.Maybe RecommendationConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-schedule>
                schedule :: (Prelude.Maybe ScheduleConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-datasource.html#cfn-datazone-datasource-type>
                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSource ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource domainIdentifier name projectIdentifier type'
  = DataSource
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       name = name, projectIdentifier = projectIdentifier, type' = type',
       assetFormsInput = Prelude.Nothing, configuration = Prelude.Nothing,
       connectionIdentifier = Prelude.Nothing,
       description = Prelude.Nothing, enableSetting = Prelude.Nothing,
       environmentIdentifier = Prelude.Nothing,
       publishOnImport = Prelude.Nothing,
       recommendation = Prelude.Nothing, schedule = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name,
                            "ProjectIdentifier" JSON..= projectIdentifier,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AssetFormsInput" Prelude.<$> assetFormsInput,
                               (JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "ConnectionIdentifier" Prelude.<$> connectionIdentifier,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableSetting" Prelude.<$> enableSetting,
                               (JSON..=) "EnvironmentIdentifier"
                                 Prelude.<$> environmentIdentifier,
                               (JSON..=) "PublishOnImport" Prelude.<$> publishOnImport,
                               (JSON..=) "Recommendation" Prelude.<$> recommendation,
                               (JSON..=) "Schedule" Prelude.<$> schedule]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name,
               "ProjectIdentifier" JSON..= projectIdentifier,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AssetFormsInput" Prelude.<$> assetFormsInput,
                  (JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "ConnectionIdentifier" Prelude.<$> connectionIdentifier,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableSetting" Prelude.<$> enableSetting,
                  (JSON..=) "EnvironmentIdentifier"
                    Prelude.<$> environmentIdentifier,
                  (JSON..=) "PublishOnImport" Prelude.<$> publishOnImport,
                  (JSON..=) "Recommendation" Prelude.<$> recommendation,
                  (JSON..=) "Schedule" Prelude.<$> schedule])))
instance Property "AssetFormsInput" DataSource where
  type PropertyType "AssetFormsInput" DataSource = [FormInputProperty]
  set newValue DataSource {..}
    = DataSource {assetFormsInput = Prelude.pure newValue, ..}
instance Property "Configuration" DataSource where
  type PropertyType "Configuration" DataSource = DataSourceConfigurationInputProperty
  set newValue DataSource {..}
    = DataSource {configuration = Prelude.pure newValue, ..}
instance Property "ConnectionIdentifier" DataSource where
  type PropertyType "ConnectionIdentifier" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {connectionIdentifier = Prelude.pure newValue, ..}
instance Property "Description" DataSource where
  type PropertyType "Description" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" DataSource where
  type PropertyType "DomainIdentifier" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {domainIdentifier = newValue, ..}
instance Property "EnableSetting" DataSource where
  type PropertyType "EnableSetting" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {enableSetting = Prelude.pure newValue, ..}
instance Property "EnvironmentIdentifier" DataSource where
  type PropertyType "EnvironmentIdentifier" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {environmentIdentifier = Prelude.pure newValue, ..}
instance Property "Name" DataSource where
  type PropertyType "Name" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {name = newValue, ..}
instance Property "ProjectIdentifier" DataSource where
  type PropertyType "ProjectIdentifier" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {projectIdentifier = newValue, ..}
instance Property "PublishOnImport" DataSource where
  type PropertyType "PublishOnImport" DataSource = Value Prelude.Bool
  set newValue DataSource {..}
    = DataSource {publishOnImport = Prelude.pure newValue, ..}
instance Property "Recommendation" DataSource where
  type PropertyType "Recommendation" DataSource = RecommendationConfigurationProperty
  set newValue DataSource {..}
    = DataSource {recommendation = Prelude.pure newValue, ..}
instance Property "Schedule" DataSource where
  type PropertyType "Schedule" DataSource = ScheduleConfigurationProperty
  set newValue DataSource {..}
    = DataSource {schedule = Prelude.pure newValue, ..}
instance Property "Type" DataSource where
  type PropertyType "Type" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {type' = newValue, ..}