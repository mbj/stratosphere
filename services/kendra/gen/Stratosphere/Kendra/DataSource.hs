module Stratosphere.Kendra.DataSource (
        module Exports, DataSource(..), mkDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.CustomDocumentEnrichmentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataSource
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html>
    DataSource {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-customdocumentenrichmentconfiguration>
                customDocumentEnrichmentConfiguration :: (Prelude.Maybe CustomDocumentEnrichmentConfigurationProperty),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-datasourceconfiguration>
                dataSourceConfiguration :: (Prelude.Maybe DataSourceConfigurationProperty),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-indexid>
                indexId :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-languagecode>
                languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-name>
                name :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-rolearn>
                roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-schedule>
                schedule :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-type>
                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSource ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource indexId name type'
  = DataSource
      {indexId = indexId, name = name, type' = type',
       customDocumentEnrichmentConfiguration = Prelude.Nothing,
       dataSourceConfiguration = Prelude.Nothing,
       description = Prelude.Nothing, languageCode = Prelude.Nothing,
       roleArn = Prelude.Nothing, schedule = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexId" JSON..= indexId, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CustomDocumentEnrichmentConfiguration"
                                 Prelude.<$> customDocumentEnrichmentConfiguration,
                               (JSON..=) "DataSourceConfiguration"
                                 Prelude.<$> dataSourceConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LanguageCode" Prelude.<$> languageCode,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexId" JSON..= indexId, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CustomDocumentEnrichmentConfiguration"
                    Prelude.<$> customDocumentEnrichmentConfiguration,
                  (JSON..=) "DataSourceConfiguration"
                    Prelude.<$> dataSourceConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LanguageCode" Prelude.<$> languageCode,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CustomDocumentEnrichmentConfiguration" DataSource where
  type PropertyType "CustomDocumentEnrichmentConfiguration" DataSource = CustomDocumentEnrichmentConfigurationProperty
  set newValue DataSource {..}
    = DataSource
        {customDocumentEnrichmentConfiguration = Prelude.pure newValue, ..}
instance Property "DataSourceConfiguration" DataSource where
  type PropertyType "DataSourceConfiguration" DataSource = DataSourceConfigurationProperty
  set newValue DataSource {..}
    = DataSource {dataSourceConfiguration = Prelude.pure newValue, ..}
instance Property "Description" DataSource where
  type PropertyType "Description" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {description = Prelude.pure newValue, ..}
instance Property "IndexId" DataSource where
  type PropertyType "IndexId" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {indexId = newValue, ..}
instance Property "LanguageCode" DataSource where
  type PropertyType "LanguageCode" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {languageCode = Prelude.pure newValue, ..}
instance Property "Name" DataSource where
  type PropertyType "Name" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {name = newValue, ..}
instance Property "RoleArn" DataSource where
  type PropertyType "RoleArn" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {roleArn = Prelude.pure newValue, ..}
instance Property "Schedule" DataSource where
  type PropertyType "Schedule" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {schedule = Prelude.pure newValue, ..}
instance Property "Tags" DataSource where
  type PropertyType "Tags" DataSource = [Tag]
  set newValue DataSource {..}
    = DataSource {tags = Prelude.pure newValue, ..}
instance Property "Type" DataSource where
  type PropertyType "Type" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {type' = newValue, ..}