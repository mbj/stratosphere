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
  = RefreshConfigurationProperty {incrementalRefresh :: IncrementalRefreshProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshConfigurationProperty ::
  IncrementalRefreshProperty -> RefreshConfigurationProperty
mkRefreshConfigurationProperty incrementalRefresh
  = RefreshConfigurationProperty
      {incrementalRefresh = incrementalRefresh}
instance ToResourceProperties RefreshConfigurationProperty where
  toResourceProperties RefreshConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RefreshConfiguration",
         supportsTags = Prelude.False,
         properties = ["IncrementalRefresh" JSON..= incrementalRefresh]}
instance JSON.ToJSON RefreshConfigurationProperty where
  toJSON RefreshConfigurationProperty {..}
    = JSON.object ["IncrementalRefresh" JSON..= incrementalRefresh]
instance Property "IncrementalRefresh" RefreshConfigurationProperty where
  type PropertyType "IncrementalRefresh" RefreshConfigurationProperty = IncrementalRefreshProperty
  set newValue RefreshConfigurationProperty {}
    = RefreshConfigurationProperty {incrementalRefresh = newValue, ..}