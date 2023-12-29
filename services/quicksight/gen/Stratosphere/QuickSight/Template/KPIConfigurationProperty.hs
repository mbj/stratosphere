module Stratosphere.QuickSight.Template.KPIConfigurationProperty (
        module Exports, KPIConfigurationProperty(..),
        mkKPIConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPISortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data KPIConfigurationProperty
  = KPIConfigurationProperty {fieldWells :: (Prelude.Maybe KPIFieldWellsProperty),
                              kPIOptions :: (Prelude.Maybe KPIOptionsProperty),
                              sortConfiguration :: (Prelude.Maybe KPISortConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIConfigurationProperty :: KPIConfigurationProperty
mkKPIConfigurationProperty
  = KPIConfigurationProperty
      {fieldWells = Prelude.Nothing, kPIOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing}
instance ToResourceProperties KPIConfigurationProperty where
  toResourceProperties KPIConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.KPIConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "KPIOptions" Prelude.<$> kPIOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration])}
instance JSON.ToJSON KPIConfigurationProperty where
  toJSON KPIConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "KPIOptions" Prelude.<$> kPIOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration]))
instance Property "FieldWells" KPIConfigurationProperty where
  type PropertyType "FieldWells" KPIConfigurationProperty = KPIFieldWellsProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty {fieldWells = Prelude.pure newValue, ..}
instance Property "KPIOptions" KPIConfigurationProperty where
  type PropertyType "KPIOptions" KPIConfigurationProperty = KPIOptionsProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty {kPIOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" KPIConfigurationProperty where
  type PropertyType "SortConfiguration" KPIConfigurationProperty = KPISortConfigurationProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}