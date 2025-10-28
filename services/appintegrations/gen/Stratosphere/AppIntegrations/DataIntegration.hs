module Stratosphere.AppIntegrations.DataIntegration (
        module Exports, DataIntegration(..), mkDataIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.DataIntegration.FileConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppIntegrations.DataIntegration.ScheduleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataIntegration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html>
    DataIntegration {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-fileconfiguration>
                     fileConfiguration :: (Prelude.Maybe FileConfigurationProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-kmskey>
                     kmsKey :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-objectconfiguration>
                     objectConfiguration :: (Prelude.Maybe JSON.Object),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-scheduleconfig>
                     scheduleConfig :: (Prelude.Maybe ScheduleConfigProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-sourceuri>
                     sourceURI :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-dataintegration.html#cfn-appintegrations-dataintegration-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataIntegration ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DataIntegration
mkDataIntegration kmsKey name sourceURI
  = DataIntegration
      {haddock_workaround_ = (), kmsKey = kmsKey, name = name,
       sourceURI = sourceURI, description = Prelude.Nothing,
       fileConfiguration = Prelude.Nothing,
       objectConfiguration = Prelude.Nothing,
       scheduleConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DataIntegration where
  toResourceProperties DataIntegration {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::DataIntegration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KmsKey" JSON..= kmsKey, "Name" JSON..= name,
                            "SourceURI" JSON..= sourceURI]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FileConfiguration" Prelude.<$> fileConfiguration,
                               (JSON..=) "ObjectConfiguration" Prelude.<$> objectConfiguration,
                               (JSON..=) "ScheduleConfig" Prelude.<$> scheduleConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataIntegration where
  toJSON DataIntegration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KmsKey" JSON..= kmsKey, "Name" JSON..= name,
               "SourceURI" JSON..= sourceURI]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FileConfiguration" Prelude.<$> fileConfiguration,
                  (JSON..=) "ObjectConfiguration" Prelude.<$> objectConfiguration,
                  (JSON..=) "ScheduleConfig" Prelude.<$> scheduleConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" DataIntegration where
  type PropertyType "Description" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {description = Prelude.pure newValue, ..}
instance Property "FileConfiguration" DataIntegration where
  type PropertyType "FileConfiguration" DataIntegration = FileConfigurationProperty
  set newValue DataIntegration {..}
    = DataIntegration {fileConfiguration = Prelude.pure newValue, ..}
instance Property "KmsKey" DataIntegration where
  type PropertyType "KmsKey" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {kmsKey = newValue, ..}
instance Property "Name" DataIntegration where
  type PropertyType "Name" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {name = newValue, ..}
instance Property "ObjectConfiguration" DataIntegration where
  type PropertyType "ObjectConfiguration" DataIntegration = JSON.Object
  set newValue DataIntegration {..}
    = DataIntegration {objectConfiguration = Prelude.pure newValue, ..}
instance Property "ScheduleConfig" DataIntegration where
  type PropertyType "ScheduleConfig" DataIntegration = ScheduleConfigProperty
  set newValue DataIntegration {..}
    = DataIntegration {scheduleConfig = Prelude.pure newValue, ..}
instance Property "SourceURI" DataIntegration where
  type PropertyType "SourceURI" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {sourceURI = newValue, ..}
instance Property "Tags" DataIntegration where
  type PropertyType "Tags" DataIntegration = [Tag]
  set newValue DataIntegration {..}
    = DataIntegration {tags = Prelude.pure newValue, ..}