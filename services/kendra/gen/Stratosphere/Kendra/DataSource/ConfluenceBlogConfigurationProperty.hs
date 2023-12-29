module Stratosphere.Kendra.DataSource.ConfluenceBlogConfigurationProperty (
        module Exports, ConfluenceBlogConfigurationProperty(..),
        mkConfluenceBlogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceBlogToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
data ConfluenceBlogConfigurationProperty
  = ConfluenceBlogConfigurationProperty {blogFieldMappings :: (Prelude.Maybe [ConfluenceBlogToIndexFieldMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceBlogConfigurationProperty ::
  ConfluenceBlogConfigurationProperty
mkConfluenceBlogConfigurationProperty
  = ConfluenceBlogConfigurationProperty
      {blogFieldMappings = Prelude.Nothing}
instance ToResourceProperties ConfluenceBlogConfigurationProperty where
  toResourceProperties ConfluenceBlogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceBlogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlogFieldMappings" Prelude.<$> blogFieldMappings])}
instance JSON.ToJSON ConfluenceBlogConfigurationProperty where
  toJSON ConfluenceBlogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlogFieldMappings" Prelude.<$> blogFieldMappings]))
instance Property "BlogFieldMappings" ConfluenceBlogConfigurationProperty where
  type PropertyType "BlogFieldMappings" ConfluenceBlogConfigurationProperty = [ConfluenceBlogToIndexFieldMappingProperty]
  set newValue ConfluenceBlogConfigurationProperty {}
    = ConfluenceBlogConfigurationProperty
        {blogFieldMappings = Prelude.pure newValue, ..}