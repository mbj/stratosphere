module Stratosphere.DataZone.Connection.RedshiftPropertiesInputProperty (
        module Exports, RedshiftPropertiesInputProperty(..),
        mkRedshiftPropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.RedshiftCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.RedshiftLineageSyncConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.RedshiftStoragePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftPropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html>
    RedshiftPropertiesInputProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html#cfn-datazone-connection-redshiftpropertiesinput-credentials>
                                     credentials :: (Prelude.Maybe RedshiftCredentialsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html#cfn-datazone-connection-redshiftpropertiesinput-databasename>
                                     databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html#cfn-datazone-connection-redshiftpropertiesinput-host>
                                     host :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html#cfn-datazone-connection-redshiftpropertiesinput-lineagesync>
                                     lineageSync :: (Prelude.Maybe RedshiftLineageSyncConfigurationInputProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html#cfn-datazone-connection-redshiftpropertiesinput-port>
                                     port :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftpropertiesinput.html#cfn-datazone-connection-redshiftpropertiesinput-storage>
                                     storage :: (Prelude.Maybe RedshiftStoragePropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftPropertiesInputProperty ::
  RedshiftPropertiesInputProperty
mkRedshiftPropertiesInputProperty
  = RedshiftPropertiesInputProperty
      {haddock_workaround_ = (), credentials = Prelude.Nothing,
       databaseName = Prelude.Nothing, host = Prelude.Nothing,
       lineageSync = Prelude.Nothing, port = Prelude.Nothing,
       storage = Prelude.Nothing}
instance ToResourceProperties RedshiftPropertiesInputProperty where
  toResourceProperties RedshiftPropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.RedshiftPropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Credentials" Prelude.<$> credentials,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Host" Prelude.<$> host,
                            (JSON..=) "LineageSync" Prelude.<$> lineageSync,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Storage" Prelude.<$> storage])}
instance JSON.ToJSON RedshiftPropertiesInputProperty where
  toJSON RedshiftPropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Credentials" Prelude.<$> credentials,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Host" Prelude.<$> host,
               (JSON..=) "LineageSync" Prelude.<$> lineageSync,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Storage" Prelude.<$> storage]))
instance Property "Credentials" RedshiftPropertiesInputProperty where
  type PropertyType "Credentials" RedshiftPropertiesInputProperty = RedshiftCredentialsProperty
  set newValue RedshiftPropertiesInputProperty {..}
    = RedshiftPropertiesInputProperty
        {credentials = Prelude.pure newValue, ..}
instance Property "DatabaseName" RedshiftPropertiesInputProperty where
  type PropertyType "DatabaseName" RedshiftPropertiesInputProperty = Value Prelude.Text
  set newValue RedshiftPropertiesInputProperty {..}
    = RedshiftPropertiesInputProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Host" RedshiftPropertiesInputProperty where
  type PropertyType "Host" RedshiftPropertiesInputProperty = Value Prelude.Text
  set newValue RedshiftPropertiesInputProperty {..}
    = RedshiftPropertiesInputProperty
        {host = Prelude.pure newValue, ..}
instance Property "LineageSync" RedshiftPropertiesInputProperty where
  type PropertyType "LineageSync" RedshiftPropertiesInputProperty = RedshiftLineageSyncConfigurationInputProperty
  set newValue RedshiftPropertiesInputProperty {..}
    = RedshiftPropertiesInputProperty
        {lineageSync = Prelude.pure newValue, ..}
instance Property "Port" RedshiftPropertiesInputProperty where
  type PropertyType "Port" RedshiftPropertiesInputProperty = Value Prelude.Double
  set newValue RedshiftPropertiesInputProperty {..}
    = RedshiftPropertiesInputProperty
        {port = Prelude.pure newValue, ..}
instance Property "Storage" RedshiftPropertiesInputProperty where
  type PropertyType "Storage" RedshiftPropertiesInputProperty = RedshiftStoragePropertiesProperty
  set newValue RedshiftPropertiesInputProperty {..}
    = RedshiftPropertiesInputProperty
        {storage = Prelude.pure newValue, ..}