module Stratosphere.IVS.StorageConfiguration (
        module Exports, StorageConfiguration(..), mkStorageConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.StorageConfiguration.S3StorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StorageConfiguration
  = StorageConfiguration {name :: (Prelude.Maybe (Value Prelude.Text)),
                          s3 :: S3StorageConfigurationProperty,
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageConfiguration ::
  S3StorageConfigurationProperty -> StorageConfiguration
mkStorageConfiguration s3
  = StorageConfiguration
      {s3 = s3, name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties StorageConfiguration where
  toResourceProperties StorageConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IVS::StorageConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3" JSON..= s3]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StorageConfiguration where
  toJSON StorageConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3" JSON..= s3]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" StorageConfiguration where
  type PropertyType "Name" StorageConfiguration = Value Prelude.Text
  set newValue StorageConfiguration {..}
    = StorageConfiguration {name = Prelude.pure newValue, ..}
instance Property "S3" StorageConfiguration where
  type PropertyType "S3" StorageConfiguration = S3StorageConfigurationProperty
  set newValue StorageConfiguration {..}
    = StorageConfiguration {s3 = newValue, ..}
instance Property "Tags" StorageConfiguration where
  type PropertyType "Tags" StorageConfiguration = [Tag]
  set newValue StorageConfiguration {..}
    = StorageConfiguration {tags = Prelude.pure newValue, ..}