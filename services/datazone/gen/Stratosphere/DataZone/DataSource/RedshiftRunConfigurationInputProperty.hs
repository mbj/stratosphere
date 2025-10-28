module Stratosphere.DataZone.DataSource.RedshiftRunConfigurationInputProperty (
        module Exports, RedshiftRunConfigurationInputProperty(..),
        mkRedshiftRunConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RedshiftCredentialConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RedshiftStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RelationalFilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftRunConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftrunconfigurationinput.html>
    RedshiftRunConfigurationInputProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftrunconfigurationinput.html#cfn-datazone-datasource-redshiftrunconfigurationinput-dataaccessrole>
                                           dataAccessRole :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftrunconfigurationinput.html#cfn-datazone-datasource-redshiftrunconfigurationinput-redshiftcredentialconfiguration>
                                           redshiftCredentialConfiguration :: RedshiftCredentialConfigurationProperty,
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftrunconfigurationinput.html#cfn-datazone-datasource-redshiftrunconfigurationinput-redshiftstorage>
                                           redshiftStorage :: RedshiftStorageProperty,
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftrunconfigurationinput.html#cfn-datazone-datasource-redshiftrunconfigurationinput-relationalfilterconfigurations>
                                           relationalFilterConfigurations :: [RelationalFilterConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftRunConfigurationInputProperty ::
  RedshiftCredentialConfigurationProperty
  -> RedshiftStorageProperty
     -> [RelationalFilterConfigurationProperty]
        -> RedshiftRunConfigurationInputProperty
mkRedshiftRunConfigurationInputProperty
  redshiftCredentialConfiguration
  redshiftStorage
  relationalFilterConfigurations
  = RedshiftRunConfigurationInputProperty
      {haddock_workaround_ = (),
       redshiftCredentialConfiguration = redshiftCredentialConfiguration,
       redshiftStorage = redshiftStorage,
       relationalFilterConfigurations = relationalFilterConfigurations,
       dataAccessRole = Prelude.Nothing}
instance ToResourceProperties RedshiftRunConfigurationInputProperty where
  toResourceProperties RedshiftRunConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.RedshiftRunConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RedshiftCredentialConfiguration"
                              JSON..= redshiftCredentialConfiguration,
                            "RedshiftStorage" JSON..= redshiftStorage,
                            "RelationalFilterConfigurations"
                              JSON..= relationalFilterConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "DataAccessRole" Prelude.<$> dataAccessRole]))}
instance JSON.ToJSON RedshiftRunConfigurationInputProperty where
  toJSON RedshiftRunConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RedshiftCredentialConfiguration"
                 JSON..= redshiftCredentialConfiguration,
               "RedshiftStorage" JSON..= redshiftStorage,
               "RelationalFilterConfigurations"
                 JSON..= relationalFilterConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "DataAccessRole" Prelude.<$> dataAccessRole])))
instance Property "DataAccessRole" RedshiftRunConfigurationInputProperty where
  type PropertyType "DataAccessRole" RedshiftRunConfigurationInputProperty = Value Prelude.Text
  set newValue RedshiftRunConfigurationInputProperty {..}
    = RedshiftRunConfigurationInputProperty
        {dataAccessRole = Prelude.pure newValue, ..}
instance Property "RedshiftCredentialConfiguration" RedshiftRunConfigurationInputProperty where
  type PropertyType "RedshiftCredentialConfiguration" RedshiftRunConfigurationInputProperty = RedshiftCredentialConfigurationProperty
  set newValue RedshiftRunConfigurationInputProperty {..}
    = RedshiftRunConfigurationInputProperty
        {redshiftCredentialConfiguration = newValue, ..}
instance Property "RedshiftStorage" RedshiftRunConfigurationInputProperty where
  type PropertyType "RedshiftStorage" RedshiftRunConfigurationInputProperty = RedshiftStorageProperty
  set newValue RedshiftRunConfigurationInputProperty {..}
    = RedshiftRunConfigurationInputProperty
        {redshiftStorage = newValue, ..}
instance Property "RelationalFilterConfigurations" RedshiftRunConfigurationInputProperty where
  type PropertyType "RelationalFilterConfigurations" RedshiftRunConfigurationInputProperty = [RelationalFilterConfigurationProperty]
  set newValue RedshiftRunConfigurationInputProperty {..}
    = RedshiftRunConfigurationInputProperty
        {relationalFilterConfigurations = newValue, ..}