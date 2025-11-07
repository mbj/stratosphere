module Stratosphere.DMS.DataProvider.RedshiftSettingsProperty (
        RedshiftSettingsProperty(..), mkRedshiftSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-redshiftsettings.html>
    RedshiftSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-redshiftsettings.html#cfn-dms-dataprovider-redshiftsettings-databasename>
                              databaseName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-redshiftsettings.html#cfn-dms-dataprovider-redshiftsettings-port>
                              port :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-redshiftsettings.html#cfn-dms-dataprovider-redshiftsettings-servername>
                              serverName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> RedshiftSettingsProperty
mkRedshiftSettingsProperty databaseName port serverName
  = RedshiftSettingsProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       port = port, serverName = serverName}
instance ToResourceProperties RedshiftSettingsProperty where
  toResourceProperties RedshiftSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.RedshiftSettings",
         supportsTags = Prelude.False,
         properties = ["DatabaseName" JSON..= databaseName,
                       "Port" JSON..= port, "ServerName" JSON..= serverName]}
instance JSON.ToJSON RedshiftSettingsProperty where
  toJSON RedshiftSettingsProperty {..}
    = JSON.object
        ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
         "ServerName" JSON..= serverName]
instance Property "DatabaseName" RedshiftSettingsProperty where
  type PropertyType "DatabaseName" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {databaseName = newValue, ..}
instance Property "Port" RedshiftSettingsProperty where
  type PropertyType "Port" RedshiftSettingsProperty = Value Prelude.Integer
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {port = newValue, ..}
instance Property "ServerName" RedshiftSettingsProperty where
  type PropertyType "ServerName" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {serverName = newValue, ..}