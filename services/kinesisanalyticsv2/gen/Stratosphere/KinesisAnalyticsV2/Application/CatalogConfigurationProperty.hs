module Stratosphere.KinesisAnalyticsV2.Application.CatalogConfigurationProperty (
        module Exports, CatalogConfigurationProperty(..),
        mkCatalogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.GlueDataCatalogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CatalogConfigurationProperty
  = CatalogConfigurationProperty {glueDataCatalogConfiguration :: (Prelude.Maybe GlueDataCatalogConfigurationProperty)}
mkCatalogConfigurationProperty :: CatalogConfigurationProperty
mkCatalogConfigurationProperty
  = CatalogConfigurationProperty
      {glueDataCatalogConfiguration = Prelude.Nothing}
instance ToResourceProperties CatalogConfigurationProperty where
  toResourceProperties CatalogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CatalogConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueDataCatalogConfiguration"
                              Prelude.<$> glueDataCatalogConfiguration])}
instance JSON.ToJSON CatalogConfigurationProperty where
  toJSON CatalogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueDataCatalogConfiguration"
                 Prelude.<$> glueDataCatalogConfiguration]))
instance Property "GlueDataCatalogConfiguration" CatalogConfigurationProperty where
  type PropertyType "GlueDataCatalogConfiguration" CatalogConfigurationProperty = GlueDataCatalogConfigurationProperty
  set newValue CatalogConfigurationProperty {}
    = CatalogConfigurationProperty
        {glueDataCatalogConfiguration = Prelude.pure newValue, ..}