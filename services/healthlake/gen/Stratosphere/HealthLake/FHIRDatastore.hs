module Stratosphere.HealthLake.FHIRDatastore (
        module Exports, FHIRDatastore(..), mkFHIRDatastore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.HealthLake.FHIRDatastore.PreloadDataConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.HealthLake.FHIRDatastore.SseConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FHIRDatastore
  = FHIRDatastore {datastoreName :: (Prelude.Maybe (Value Prelude.Text)),
                   datastoreTypeVersion :: (Value Prelude.Text),
                   preloadDataConfig :: (Prelude.Maybe PreloadDataConfigProperty),
                   sseConfiguration :: (Prelude.Maybe SseConfigurationProperty),
                   tags :: (Prelude.Maybe [Tag])}
mkFHIRDatastore :: Value Prelude.Text -> FHIRDatastore
mkFHIRDatastore datastoreTypeVersion
  = FHIRDatastore
      {datastoreTypeVersion = datastoreTypeVersion,
       datastoreName = Prelude.Nothing,
       preloadDataConfig = Prelude.Nothing,
       sseConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FHIRDatastore where
  toResourceProperties FHIRDatastore {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatastoreTypeVersion" JSON..= datastoreTypeVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "DatastoreName" Prelude.<$> datastoreName,
                               (JSON..=) "PreloadDataConfig" Prelude.<$> preloadDataConfig,
                               (JSON..=) "SseConfiguration" Prelude.<$> sseConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FHIRDatastore where
  toJSON FHIRDatastore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatastoreTypeVersion" JSON..= datastoreTypeVersion]
              (Prelude.catMaybes
                 [(JSON..=) "DatastoreName" Prelude.<$> datastoreName,
                  (JSON..=) "PreloadDataConfig" Prelude.<$> preloadDataConfig,
                  (JSON..=) "SseConfiguration" Prelude.<$> sseConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DatastoreName" FHIRDatastore where
  type PropertyType "DatastoreName" FHIRDatastore = Value Prelude.Text
  set newValue FHIRDatastore {..}
    = FHIRDatastore {datastoreName = Prelude.pure newValue, ..}
instance Property "DatastoreTypeVersion" FHIRDatastore where
  type PropertyType "DatastoreTypeVersion" FHIRDatastore = Value Prelude.Text
  set newValue FHIRDatastore {..}
    = FHIRDatastore {datastoreTypeVersion = newValue, ..}
instance Property "PreloadDataConfig" FHIRDatastore where
  type PropertyType "PreloadDataConfig" FHIRDatastore = PreloadDataConfigProperty
  set newValue FHIRDatastore {..}
    = FHIRDatastore {preloadDataConfig = Prelude.pure newValue, ..}
instance Property "SseConfiguration" FHIRDatastore where
  type PropertyType "SseConfiguration" FHIRDatastore = SseConfigurationProperty
  set newValue FHIRDatastore {..}
    = FHIRDatastore {sseConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" FHIRDatastore where
  type PropertyType "Tags" FHIRDatastore = [Tag]
  set newValue FHIRDatastore {..}
    = FHIRDatastore {tags = Prelude.pure newValue, ..}