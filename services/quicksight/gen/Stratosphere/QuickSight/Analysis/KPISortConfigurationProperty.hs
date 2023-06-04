module Stratosphere.QuickSight.Analysis.KPISortConfigurationProperty (
        module Exports, KPISortConfigurationProperty(..),
        mkKPISortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import Stratosphere.ResourceProperties
data KPISortConfigurationProperty
  = KPISortConfigurationProperty {trendGroupSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkKPISortConfigurationProperty :: KPISortConfigurationProperty
mkKPISortConfigurationProperty
  = KPISortConfigurationProperty {trendGroupSort = Prelude.Nothing}
instance ToResourceProperties KPISortConfigurationProperty where
  toResourceProperties KPISortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPISortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TrendGroupSort" Prelude.<$> trendGroupSort])}
instance JSON.ToJSON KPISortConfigurationProperty where
  toJSON KPISortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TrendGroupSort" Prelude.<$> trendGroupSort]))
instance Property "TrendGroupSort" KPISortConfigurationProperty where
  type PropertyType "TrendGroupSort" KPISortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue KPISortConfigurationProperty {}
    = KPISortConfigurationProperty
        {trendGroupSort = Prelude.pure newValue, ..}