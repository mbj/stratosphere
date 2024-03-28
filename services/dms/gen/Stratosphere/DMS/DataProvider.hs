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
  = DataProvider {dataProviderIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                  dataProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  engine :: (Value Prelude.Text),
                  exactSettings :: (Prelude.Maybe (Value Prelude.Bool)),
                  settings :: (Prelude.Maybe SettingsProperty),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProvider :: Value Prelude.Text -> DataProvider
mkDataProvider engine
  = DataProvider
      {engine = engine, dataProviderIdentifier = Prelude.Nothing,
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