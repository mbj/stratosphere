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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-catalogconfiguration.html>
    CatalogConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-catalogconfiguration.html#cfn-kinesisanalyticsv2-application-catalogconfiguration-gluedatacatalogconfiguration>
                                  glueDataCatalogConfiguration :: (Prelude.Maybe GlueDataCatalogConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCatalogConfigurationProperty :: CatalogConfigurationProperty
mkCatalogConfigurationProperty
  = CatalogConfigurationProperty
      {haddock_workaround_ = (),
       glueDataCatalogConfiguration = Prelude.Nothing}
instance ToResourceProperties CatalogConfigurationProperty where
  toResourceProperties CatalogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CatalogConfiguration",
         supportsTags = Prelude.False,
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
  set newValue CatalogConfigurationProperty {..}
    = CatalogConfigurationProperty
        {glueDataCatalogConfiguration = Prelude.pure newValue, ..}