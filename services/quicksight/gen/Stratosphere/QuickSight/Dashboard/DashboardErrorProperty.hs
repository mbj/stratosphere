module Stratosphere.QuickSight.Dashboard.DashboardErrorProperty (
        module Exports, DashboardErrorProperty(..),
        mkDashboardErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.EntityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardErrorProperty
  = DashboardErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                            type' :: (Prelude.Maybe (Value Prelude.Text)),
                            violatedEntities :: (Prelude.Maybe [EntityProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardErrorProperty :: DashboardErrorProperty
mkDashboardErrorProperty
  = DashboardErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing,
       violatedEntities = Prelude.Nothing}
instance ToResourceProperties DashboardErrorProperty where
  toResourceProperties DashboardErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardError",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "ViolatedEntities" Prelude.<$> violatedEntities])}
instance JSON.ToJSON DashboardErrorProperty where
  toJSON DashboardErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "ViolatedEntities" Prelude.<$> violatedEntities]))
instance Property "Message" DashboardErrorProperty where
  type PropertyType "Message" DashboardErrorProperty = Value Prelude.Text
  set newValue DashboardErrorProperty {..}
    = DashboardErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" DashboardErrorProperty where
  type PropertyType "Type" DashboardErrorProperty = Value Prelude.Text
  set newValue DashboardErrorProperty {..}
    = DashboardErrorProperty {type' = Prelude.pure newValue, ..}
instance Property "ViolatedEntities" DashboardErrorProperty where
  type PropertyType "ViolatedEntities" DashboardErrorProperty = [EntityProperty]
  set newValue DashboardErrorProperty {..}
    = DashboardErrorProperty
        {violatedEntities = Prelude.pure newValue, ..}