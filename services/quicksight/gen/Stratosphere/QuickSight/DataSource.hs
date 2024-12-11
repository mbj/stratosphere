module Stratosphere.QuickSight.DataSource (
        module Exports, DataSource(..), mkDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.DataSourceCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.DataSourceErrorInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.DataSourceParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.SslPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.VpcConnectionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataSource
  = DataSource {alternateDataSourceParameters :: (Prelude.Maybe [DataSourceParametersProperty]),
                awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                credentials :: (Prelude.Maybe DataSourceCredentialsProperty),
                dataSourceId :: (Prelude.Maybe (Value Prelude.Text)),
                dataSourceParameters :: (Prelude.Maybe DataSourceParametersProperty),
                errorInfo :: (Prelude.Maybe DataSourceErrorInfoProperty),
                folderArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                name :: (Value Prelude.Text),
                permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
                sslProperties :: (Prelude.Maybe SslPropertiesProperty),
                tags :: (Prelude.Maybe [Tag]),
                type' :: (Value Prelude.Text),
                vpcConnectionProperties :: (Prelude.Maybe VpcConnectionPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSource ::
  Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource name type'
  = DataSource
      {name = name, type' = type',
       alternateDataSourceParameters = Prelude.Nothing,
       awsAccountId = Prelude.Nothing, credentials = Prelude.Nothing,
       dataSourceId = Prelude.Nothing,
       dataSourceParameters = Prelude.Nothing,
       errorInfo = Prelude.Nothing, folderArns = Prelude.Nothing,
       permissions = Prelude.Nothing, sslProperties = Prelude.Nothing,
       tags = Prelude.Nothing, vpcConnectionProperties = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AlternateDataSourceParameters"
                                 Prelude.<$> alternateDataSourceParameters,
                               (JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                               (JSON..=) "Credentials" Prelude.<$> credentials,
                               (JSON..=) "DataSourceId" Prelude.<$> dataSourceId,
                               (JSON..=) "DataSourceParameters" Prelude.<$> dataSourceParameters,
                               (JSON..=) "ErrorInfo" Prelude.<$> errorInfo,
                               (JSON..=) "FolderArns" Prelude.<$> folderArns,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "SslProperties" Prelude.<$> sslProperties,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcConnectionProperties"
                                 Prelude.<$> vpcConnectionProperties]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AlternateDataSourceParameters"
                    Prelude.<$> alternateDataSourceParameters,
                  (JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                  (JSON..=) "Credentials" Prelude.<$> credentials,
                  (JSON..=) "DataSourceId" Prelude.<$> dataSourceId,
                  (JSON..=) "DataSourceParameters" Prelude.<$> dataSourceParameters,
                  (JSON..=) "ErrorInfo" Prelude.<$> errorInfo,
                  (JSON..=) "FolderArns" Prelude.<$> folderArns,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "SslProperties" Prelude.<$> sslProperties,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcConnectionProperties"
                    Prelude.<$> vpcConnectionProperties])))
instance Property "AlternateDataSourceParameters" DataSource where
  type PropertyType "AlternateDataSourceParameters" DataSource = [DataSourceParametersProperty]
  set newValue DataSource {..}
    = DataSource
        {alternateDataSourceParameters = Prelude.pure newValue, ..}
instance Property "AwsAccountId" DataSource where
  type PropertyType "AwsAccountId" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {awsAccountId = Prelude.pure newValue, ..}
instance Property "Credentials" DataSource where
  type PropertyType "Credentials" DataSource = DataSourceCredentialsProperty
  set newValue DataSource {..}
    = DataSource {credentials = Prelude.pure newValue, ..}
instance Property "DataSourceId" DataSource where
  type PropertyType "DataSourceId" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {dataSourceId = Prelude.pure newValue, ..}
instance Property "DataSourceParameters" DataSource where
  type PropertyType "DataSourceParameters" DataSource = DataSourceParametersProperty
  set newValue DataSource {..}
    = DataSource {dataSourceParameters = Prelude.pure newValue, ..}
instance Property "ErrorInfo" DataSource where
  type PropertyType "ErrorInfo" DataSource = DataSourceErrorInfoProperty
  set newValue DataSource {..}
    = DataSource {errorInfo = Prelude.pure newValue, ..}
instance Property "FolderArns" DataSource where
  type PropertyType "FolderArns" DataSource = ValueList Prelude.Text
  set newValue DataSource {..}
    = DataSource {folderArns = Prelude.pure newValue, ..}
instance Property "Name" DataSource where
  type PropertyType "Name" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {name = newValue, ..}
instance Property "Permissions" DataSource where
  type PropertyType "Permissions" DataSource = [ResourcePermissionProperty]
  set newValue DataSource {..}
    = DataSource {permissions = Prelude.pure newValue, ..}
instance Property "SslProperties" DataSource where
  type PropertyType "SslProperties" DataSource = SslPropertiesProperty
  set newValue DataSource {..}
    = DataSource {sslProperties = Prelude.pure newValue, ..}
instance Property "Tags" DataSource where
  type PropertyType "Tags" DataSource = [Tag]
  set newValue DataSource {..}
    = DataSource {tags = Prelude.pure newValue, ..}
instance Property "Type" DataSource where
  type PropertyType "Type" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {type' = newValue, ..}
instance Property "VpcConnectionProperties" DataSource where
  type PropertyType "VpcConnectionProperties" DataSource = VpcConnectionPropertiesProperty
  set newValue DataSource {..}
    = DataSource {vpcConnectionProperties = Prelude.pure newValue, ..}