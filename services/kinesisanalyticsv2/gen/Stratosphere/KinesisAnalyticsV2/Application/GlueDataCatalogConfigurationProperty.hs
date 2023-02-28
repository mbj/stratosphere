module Stratosphere.KinesisAnalyticsV2.Application.GlueDataCatalogConfigurationProperty (
        GlueDataCatalogConfigurationProperty(..),
        mkGlueDataCatalogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueDataCatalogConfigurationProperty
  = GlueDataCatalogConfigurationProperty {databaseARN :: (Prelude.Maybe (Value Prelude.Text))}
mkGlueDataCatalogConfigurationProperty ::
  GlueDataCatalogConfigurationProperty
mkGlueDataCatalogConfigurationProperty
  = GlueDataCatalogConfigurationProperty
      {databaseARN = Prelude.Nothing}
instance ToResourceProperties GlueDataCatalogConfigurationProperty where
  toResourceProperties GlueDataCatalogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.GlueDataCatalogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatabaseARN" Prelude.<$> databaseARN])}
instance JSON.ToJSON GlueDataCatalogConfigurationProperty where
  toJSON GlueDataCatalogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatabaseARN" Prelude.<$> databaseARN]))
instance Property "DatabaseARN" GlueDataCatalogConfigurationProperty where
  type PropertyType "DatabaseARN" GlueDataCatalogConfigurationProperty = Value Prelude.Text
  set newValue GlueDataCatalogConfigurationProperty {}
    = GlueDataCatalogConfigurationProperty
        {databaseARN = Prelude.pure newValue, ..}