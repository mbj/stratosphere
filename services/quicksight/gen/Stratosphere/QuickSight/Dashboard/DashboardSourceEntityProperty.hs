module Stratosphere.QuickSight.Dashboard.DashboardSourceEntityProperty (
        module Exports, DashboardSourceEntityProperty(..),
        mkDashboardSourceEntityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DashboardSourceTemplateProperty as Exports
import Stratosphere.ResourceProperties
data DashboardSourceEntityProperty
  = DashboardSourceEntityProperty {sourceTemplate :: (Prelude.Maybe DashboardSourceTemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardSourceEntityProperty :: DashboardSourceEntityProperty
mkDashboardSourceEntityProperty
  = DashboardSourceEntityProperty {sourceTemplate = Prelude.Nothing}
instance ToResourceProperties DashboardSourceEntityProperty where
  toResourceProperties DashboardSourceEntityProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardSourceEntity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceTemplate" Prelude.<$> sourceTemplate])}
instance JSON.ToJSON DashboardSourceEntityProperty where
  toJSON DashboardSourceEntityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceTemplate" Prelude.<$> sourceTemplate]))
instance Property "SourceTemplate" DashboardSourceEntityProperty where
  type PropertyType "SourceTemplate" DashboardSourceEntityProperty = DashboardSourceTemplateProperty
  set newValue DashboardSourceEntityProperty {}
    = DashboardSourceEntityProperty
        {sourceTemplate = Prelude.pure newValue, ..}