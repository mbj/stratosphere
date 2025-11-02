module Stratosphere.DMS.DataProvider (
        module Exports, DataProvider(..), mkDataProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.SettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataProvider
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html>
    DataProvider {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-dataprovideridentifier>
                  dataProviderIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-dataprovidername>
                  dataProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-engine>
                  engine :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-exactsettings>
                  exactSettings :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-settings>
                  settings :: (Prelude.Maybe SettingsProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-dataprovider.html#cfn-dms-dataprovider-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProvider :: Value Prelude.Text -> DataProvider
mkDataProvider engine
  = DataProvider
      {haddock_workaround_ = (), engine = engine,
       dataProviderIdentifier = Prelude.Nothing,
       dataProviderName = Prelude.Nothing, description = Prelude.Nothing,
       exactSettings = Prelude.Nothing, settings = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataProvider where
  toResourceProperties DataProvider {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Engine" JSON..= engine]
                           (Prelude.catMaybes
                              [(JSON..=) "DataProviderIdentifier"
                                 Prelude.<$> dataProviderIdentifier,
                               (JSON..=) "DataProviderName" Prelude.<$> dataProviderName,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExactSettings" Prelude.<$> exactSettings,
                               (JSON..=) "Settings" Prelude.<$> settings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataProvider where
  toJSON DataProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Engine" JSON..= engine]
              (Prelude.catMaybes
                 [(JSON..=) "DataProviderIdentifier"
                    Prelude.<$> dataProviderIdentifier,
                  (JSON..=) "DataProviderName" Prelude.<$> dataProviderName,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExactSettings" Prelude.<$> exactSettings,
                  (JSON..=) "Settings" Prelude.<$> settings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataProviderIdentifier" DataProvider where
  type PropertyType "DataProviderIdentifier" DataProvider = Value Prelude.Text
  set newValue DataProvider {..}
    = DataProvider {dataProviderIdentifier = Prelude.pure newValue, ..}
instance Property "DataProviderName" DataProvider where
  type PropertyType "DataProviderName" DataProvider = Value Prelude.Text
  set newValue DataProvider {..}
    = DataProvider {dataProviderName = Prelude.pure newValue, ..}
instance Property "Description" DataProvider where
  type PropertyType "Description" DataProvider = Value Prelude.Text
  set newValue DataProvider {..}
    = DataProvider {description = Prelude.pure newValue, ..}
instance Property "Engine" DataProvider where
  type PropertyType "Engine" DataProvider = Value Prelude.Text
  set newValue DataProvider {..}
    = DataProvider {engine = newValue, ..}
instance Property "ExactSettings" DataProvider where
  type PropertyType "ExactSettings" DataProvider = Value Prelude.Bool
  set newValue DataProvider {..}
    = DataProvider {exactSettings = Prelude.pure newValue, ..}
instance Property "Settings" DataProvider where
  type PropertyType "Settings" DataProvider = SettingsProperty
  set newValue DataProvider {..}
    = DataProvider {settings = Prelude.pure newValue, ..}
instance Property "Tags" DataProvider where
  type PropertyType "Tags" DataProvider = [Tag]
  set newValue DataProvider {..}
    = DataProvider {tags = Prelude.pure newValue, ..}