module Stratosphere.QuickSight.DataSet.RefreshConfigurationProperty (
        module Exports, RefreshConfigurationProperty(..),
        mkRefreshConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.IncrementalRefreshProperty as Exports
import Stratosphere.ResourceProperties
data RefreshConfigurationProperty
  = RefreshConfigurationProperty {incrementalRefresh :: (Prelude.Maybe IncrementalRefreshProperty)}
mkRefreshConfigurationProperty :: RefreshConfigurationProperty
mkRefreshConfigurationProperty
  = RefreshConfigurationProperty
      {incrementalRefresh = Prelude.Nothing}
instance ToResourceProperties RefreshConfigurationProperty where
  toResourceProperties RefreshConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RefreshConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncrementalRefresh" Prelude.<$> incrementalRefresh])}
instance JSON.ToJSON RefreshConfigurationProperty where
  toJSON RefreshConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncrementalRefresh" Prelude.<$> incrementalRefresh]))
instance Property "IncrementalRefresh" RefreshConfigurationProperty where
  type PropertyType "IncrementalRefresh" RefreshConfigurationProperty = IncrementalRefreshProperty
  set newValue RefreshConfigurationProperty {}
    = RefreshConfigurationProperty
        {incrementalRefresh = Prelude.pure newValue, ..}