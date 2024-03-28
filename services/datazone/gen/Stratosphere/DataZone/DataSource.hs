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
  = DataSource {assetFormsInput :: (Prelude.Maybe [FormInputProperty]),
                configuration :: (Prelude.Maybe DataSourceConfigurationInputProperty),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                domainIdentifier :: (Value Prelude.Text),
                enableSetting :: (Prelude.Maybe (Value Prelude.Text)),
                environmentIdentifier :: (Value Prelude.Text),
                name :: (Value Prelude.Text),
                projectIdentifier :: (Value Prelude.Text),
                publishOnImport :: (Prelude.Maybe (Value Prelude.Bool)),
                recommendation :: (Prelude.Maybe RecommendationConfigurationProperty),
                schedule :: (Prelude.Maybe ScheduleConfigurationProperty),
                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSource ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource
  domainIdentifier
  environmentIdentifier
  name
  projectIdentifier
  type'
  = DataSource
      {domainIdentifier = domainIdentifier,
       environmentIdentifier = environmentIdentifier, name = name,
       projectIdentifier = projectIdentifier, type' = type',
       assetFormsInput = Prelude.Nothing, configuration = Prelude.Nothing,
       description = Prelude.Nothing, enableSetting = Prelude.Nothing,
       publishOnImport = Prelude.Nothing,
       recommendation = Prelude.Nothing, schedule = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "EnvironmentIdentifier" JSON..= environmentIdentifier,
                            "Name" JSON..= name, "ProjectIdentifier" JSON..= projectIdentifier,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AssetFormsInput" Prelude.<$> assetFormsInput,
                               (JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableSetting" Prelude.<$> enableSetting,
                               (JSON..=) "PublishOnImport" Prelude.<$> publishOnImport,
                               (JSON..=) "Recommendation" Prelude.<$> recommendation,
                               (JSON..=) "Schedule" Prelude.<$> schedule]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "EnvironmentIdentifier" JSON..= environmentIdentifier,
               "Name" JSON..= name, "ProjectIdentifier" JSON..= projectIdentifier,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AssetFormsInput" Prelude.<$> assetFormsInput,
                  (JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableSetting" Prelude.<$> enableSetting,
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
    = DataSource {environmentIdentifier = newValue, ..}
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