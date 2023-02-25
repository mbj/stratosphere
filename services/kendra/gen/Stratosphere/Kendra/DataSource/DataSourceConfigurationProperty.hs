module Stratosphere.Kendra.DataSource.DataSourceConfigurationProperty (
        module Exports, DataSourceConfigurationProperty(..),
        mkDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DatabaseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.GoogleDriveConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.OneDriveConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.S3DataSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ServiceNowConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SharePointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WebCrawlerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WorkDocsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceConfigurationProperty
  = DataSourceConfigurationProperty {confluenceConfiguration :: (Prelude.Maybe ConfluenceConfigurationProperty),
                                     databaseConfiguration :: (Prelude.Maybe DatabaseConfigurationProperty),
                                     googleDriveConfiguration :: (Prelude.Maybe GoogleDriveConfigurationProperty),
                                     oneDriveConfiguration :: (Prelude.Maybe OneDriveConfigurationProperty),
                                     s3Configuration :: (Prelude.Maybe S3DataSourceConfigurationProperty),
                                     salesforceConfiguration :: (Prelude.Maybe SalesforceConfigurationProperty),
                                     serviceNowConfiguration :: (Prelude.Maybe ServiceNowConfigurationProperty),
                                     sharePointConfiguration :: (Prelude.Maybe SharePointConfigurationProperty),
                                     webCrawlerConfiguration :: (Prelude.Maybe WebCrawlerConfigurationProperty),
                                     workDocsConfiguration :: (Prelude.Maybe WorkDocsConfigurationProperty)}
mkDataSourceConfigurationProperty ::
  DataSourceConfigurationProperty
mkDataSourceConfigurationProperty
  = DataSourceConfigurationProperty
      {confluenceConfiguration = Prelude.Nothing,
       databaseConfiguration = Prelude.Nothing,
       googleDriveConfiguration = Prelude.Nothing,
       oneDriveConfiguration = Prelude.Nothing,
       s3Configuration = Prelude.Nothing,
       salesforceConfiguration = Prelude.Nothing,
       serviceNowConfiguration = Prelude.Nothing,
       sharePointConfiguration = Prelude.Nothing,
       webCrawlerConfiguration = Prelude.Nothing,
       workDocsConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSourceConfigurationProperty where
  toResourceProperties DataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DataSourceConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfluenceConfiguration"
                              Prelude.<$> confluenceConfiguration,
                            (JSON..=) "DatabaseConfiguration"
                              Prelude.<$> databaseConfiguration,
                            (JSON..=) "GoogleDriveConfiguration"
                              Prelude.<$> googleDriveConfiguration,
                            (JSON..=) "OneDriveConfiguration"
                              Prelude.<$> oneDriveConfiguration,
                            (JSON..=) "S3Configuration" Prelude.<$> s3Configuration,
                            (JSON..=) "SalesforceConfiguration"
                              Prelude.<$> salesforceConfiguration,
                            (JSON..=) "ServiceNowConfiguration"
                              Prelude.<$> serviceNowConfiguration,
                            (JSON..=) "SharePointConfiguration"
                              Prelude.<$> sharePointConfiguration,
                            (JSON..=) "WebCrawlerConfiguration"
                              Prelude.<$> webCrawlerConfiguration,
                            (JSON..=) "WorkDocsConfiguration"
                              Prelude.<$> workDocsConfiguration])}
instance JSON.ToJSON DataSourceConfigurationProperty where
  toJSON DataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfluenceConfiguration"
                 Prelude.<$> confluenceConfiguration,
               (JSON..=) "DatabaseConfiguration"
                 Prelude.<$> databaseConfiguration,
               (JSON..=) "GoogleDriveConfiguration"
                 Prelude.<$> googleDriveConfiguration,
               (JSON..=) "OneDriveConfiguration"
                 Prelude.<$> oneDriveConfiguration,
               (JSON..=) "S3Configuration" Prelude.<$> s3Configuration,
               (JSON..=) "SalesforceConfiguration"
                 Prelude.<$> salesforceConfiguration,
               (JSON..=) "ServiceNowConfiguration"
                 Prelude.<$> serviceNowConfiguration,
               (JSON..=) "SharePointConfiguration"
                 Prelude.<$> sharePointConfiguration,
               (JSON..=) "WebCrawlerConfiguration"
                 Prelude.<$> webCrawlerConfiguration,
               (JSON..=) "WorkDocsConfiguration"
                 Prelude.<$> workDocsConfiguration]))
instance Property "ConfluenceConfiguration" DataSourceConfigurationProperty where
  type PropertyType "ConfluenceConfiguration" DataSourceConfigurationProperty = ConfluenceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {confluenceConfiguration = Prelude.pure newValue, ..}
instance Property "DatabaseConfiguration" DataSourceConfigurationProperty where
  type PropertyType "DatabaseConfiguration" DataSourceConfigurationProperty = DatabaseConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {databaseConfiguration = Prelude.pure newValue, ..}
instance Property "GoogleDriveConfiguration" DataSourceConfigurationProperty where
  type PropertyType "GoogleDriveConfiguration" DataSourceConfigurationProperty = GoogleDriveConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {googleDriveConfiguration = Prelude.pure newValue, ..}
instance Property "OneDriveConfiguration" DataSourceConfigurationProperty where
  type PropertyType "OneDriveConfiguration" DataSourceConfigurationProperty = OneDriveConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {oneDriveConfiguration = Prelude.pure newValue, ..}
instance Property "S3Configuration" DataSourceConfigurationProperty where
  type PropertyType "S3Configuration" DataSourceConfigurationProperty = S3DataSourceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {s3Configuration = Prelude.pure newValue, ..}
instance Property "SalesforceConfiguration" DataSourceConfigurationProperty where
  type PropertyType "SalesforceConfiguration" DataSourceConfigurationProperty = SalesforceConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {salesforceConfiguration = Prelude.pure newValue, ..}
instance Property "ServiceNowConfiguration" DataSourceConfigurationProperty where
  type PropertyType "ServiceNowConfiguration" DataSourceConfigurationProperty = ServiceNowConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {serviceNowConfiguration = Prelude.pure newValue, ..}
instance Property "SharePointConfiguration" DataSourceConfigurationProperty where
  type PropertyType "SharePointConfiguration" DataSourceConfigurationProperty = SharePointConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {sharePointConfiguration = Prelude.pure newValue, ..}
instance Property "WebCrawlerConfiguration" DataSourceConfigurationProperty where
  type PropertyType "WebCrawlerConfiguration" DataSourceConfigurationProperty = WebCrawlerConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {webCrawlerConfiguration = Prelude.pure newValue, ..}
instance Property "WorkDocsConfiguration" DataSourceConfigurationProperty where
  type PropertyType "WorkDocsConfiguration" DataSourceConfigurationProperty = WorkDocsConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {workDocsConfiguration = Prelude.pure newValue, ..}