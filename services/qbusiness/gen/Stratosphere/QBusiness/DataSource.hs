module Stratosphere.QBusiness.DataSource (
        module Exports, DataSource(..), mkDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.DataSourceVpcConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.DocumentEnrichmentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataSource
  = DataSource {applicationId :: (Value Prelude.Text),
                configuration :: JSON.Object,
                description :: (Prelude.Maybe (Value Prelude.Text)),
                displayName :: (Value Prelude.Text),
                documentEnrichmentConfiguration :: (Prelude.Maybe DocumentEnrichmentConfigurationProperty),
                indexId :: (Value Prelude.Text),
                roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                syncSchedule :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag]),
                vpcConfiguration :: (Prelude.Maybe DataSourceVpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSource ::
  Value Prelude.Text
  -> JSON.Object
     -> Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource applicationId configuration displayName indexId
  = DataSource
      {applicationId = applicationId, configuration = configuration,
       displayName = displayName, indexId = indexId,
       description = Prelude.Nothing,
       documentEnrichmentConfiguration = Prelude.Nothing,
       roleArn = Prelude.Nothing, syncSchedule = Prelude.Nothing,
       tags = Prelude.Nothing, vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "Configuration" JSON..= configuration,
                            "DisplayName" JSON..= displayName, "IndexId" JSON..= indexId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DocumentEnrichmentConfiguration"
                                 Prelude.<$> documentEnrichmentConfiguration,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "SyncSchedule" Prelude.<$> syncSchedule,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "Configuration" JSON..= configuration,
               "DisplayName" JSON..= displayName, "IndexId" JSON..= indexId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DocumentEnrichmentConfiguration"
                    Prelude.<$> documentEnrichmentConfiguration,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "SyncSchedule" Prelude.<$> syncSchedule,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "ApplicationId" DataSource where
  type PropertyType "ApplicationId" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {applicationId = newValue, ..}
instance Property "Configuration" DataSource where
  type PropertyType "Configuration" DataSource = JSON.Object
  set newValue DataSource {..}
    = DataSource {configuration = newValue, ..}
instance Property "Description" DataSource where
  type PropertyType "Description" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {description = Prelude.pure newValue, ..}
instance Property "DisplayName" DataSource where
  type PropertyType "DisplayName" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {displayName = newValue, ..}
instance Property "DocumentEnrichmentConfiguration" DataSource where
  type PropertyType "DocumentEnrichmentConfiguration" DataSource = DocumentEnrichmentConfigurationProperty
  set newValue DataSource {..}
    = DataSource
        {documentEnrichmentConfiguration = Prelude.pure newValue, ..}
instance Property "IndexId" DataSource where
  type PropertyType "IndexId" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {indexId = newValue, ..}
instance Property "RoleArn" DataSource where
  type PropertyType "RoleArn" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {roleArn = Prelude.pure newValue, ..}
instance Property "SyncSchedule" DataSource where
  type PropertyType "SyncSchedule" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {syncSchedule = Prelude.pure newValue, ..}
instance Property "Tags" DataSource where
  type PropertyType "Tags" DataSource = [Tag]
  set newValue DataSource {..}
    = DataSource {tags = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" DataSource where
  type PropertyType "VpcConfiguration" DataSource = DataSourceVpcConfigurationProperty
  set newValue DataSource {..}
    = DataSource {vpcConfiguration = Prelude.pure newValue, ..}