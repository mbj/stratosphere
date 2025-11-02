module Stratosphere.Bedrock.DataSource.DataSourceConfigurationProperty (
        module Exports, DataSourceConfigurationProperty(..),
        mkDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ConfluenceDataSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.S3DataSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SalesforceDataSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SharePointDataSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.WebDataSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html>
    DataSourceConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html#cfn-bedrock-datasource-datasourceconfiguration-confluenceconfiguration>
                                     confluenceConfiguration :: (Prelude.Maybe ConfluenceDataSourceConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html#cfn-bedrock-datasource-datasourceconfiguration-s3configuration>
                                     s3Configuration :: (Prelude.Maybe S3DataSourceConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html#cfn-bedrock-datasource-datasourceconfiguration-salesforceconfiguration>
                                     salesforceConfiguration :: (Prelude.Maybe SalesforceDataSourceConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html#cfn-bedrock-datasource-datasourceconfiguration-sharepointconfiguration>
                                     sharePointConfiguration :: (Prelude.Maybe SharePointDataSourceConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html#cfn-bedrock-datasource-datasourceconfiguration-type>
                                     type' :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-datasourceconfiguration.html#cfn-bedrock-datasource-datasourceconfiguration-webconfiguration>
                                     webConfiguration :: (Prelude.Maybe WebDataSourceConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceConfigurationProperty ::
  Value Prelude.Text -> DataSourceConfigurationProperty
mkDataSourceConfigurationProperty type'
  = DataSourceConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       confluenceConfiguration = Prelude.Nothing,
       s3Configuration = Prelude.Nothing,
       salesforceConfiguration = Prelude.Nothing,
       sharePointConfiguration = Prelude.Nothing,
       webConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSourceConfigurationProperty where
  toResourceProperties DataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.DataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ConfluenceConfiguration"
                                 Prelude.<$> confluenceConfiguration,
                               (JSON..=) "S3Configuration" Prelude.<$> s3Configuration,
                               (JSON..=) "SalesforceConfiguration"
                                 Prelude.<$> salesforceConfiguration,
                               (JSON..=) "SharePointConfiguration"
                                 Prelude.<$> sharePointConfiguration,
                               (JSON..=) "WebConfiguration" Prelude.<$> webConfiguration]))}
instance JSON.ToJSON DataSourceConfigurationProperty where
  toJSON DataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ConfluenceConfiguration"
                    Prelude.<$> confluenceConfiguration,
                  (JSON..=) "S3Configuration" Prelude.<$> s3Configuration,
                  (JSON..=) "SalesforceConfiguration"
                    Prelude.<$> salesforceConfiguration,
                  (JSON..=) "SharePointConfiguration"
                    Prelude.<$> sharePointConfiguration,
                  (JSON..=) "WebConfiguration" Prelude.<$> webConfiguration])))
instance Property "ConfluenceConfiguration" DataSourceConfigurationProperty where
  type PropertyType "ConfluenceConfiguration" DataSourceConfigurationProperty = ConfluenceDataSourceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {confluenceConfiguration = Prelude.pure newValue, ..}
instance Property "S3Configuration" DataSourceConfigurationProperty where
  type PropertyType "S3Configuration" DataSourceConfigurationProperty = S3DataSourceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {s3Configuration = Prelude.pure newValue, ..}
instance Property "SalesforceConfiguration" DataSourceConfigurationProperty where
  type PropertyType "SalesforceConfiguration" DataSourceConfigurationProperty = SalesforceDataSourceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {salesforceConfiguration = Prelude.pure newValue, ..}
instance Property "SharePointConfiguration" DataSourceConfigurationProperty where
  type PropertyType "SharePointConfiguration" DataSourceConfigurationProperty = SharePointDataSourceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {sharePointConfiguration = Prelude.pure newValue, ..}
instance Property "Type" DataSourceConfigurationProperty where
  type PropertyType "Type" DataSourceConfigurationProperty = Value Prelude.Text
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty {type' = newValue, ..}
instance Property "WebConfiguration" DataSourceConfigurationProperty where
  type PropertyType "WebConfiguration" DataSourceConfigurationProperty = WebDataSourceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {webConfiguration = Prelude.pure newValue, ..}