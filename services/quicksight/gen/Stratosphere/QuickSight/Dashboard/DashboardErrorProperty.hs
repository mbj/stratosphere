module Stratosphere.QuickSight.Dashboard.DashboardErrorProperty (
        DashboardErrorProperty(..), mkDashboardErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardErrorProperty
  = DashboardErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                            type' :: (Prelude.Maybe (Value Prelude.Text))}
mkDashboardErrorProperty :: DashboardErrorProperty
mkDashboardErrorProperty
  = DashboardErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DashboardErrorProperty where
  toResourceProperties DashboardErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardError",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DashboardErrorProperty where
  toJSON DashboardErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" DashboardErrorProperty where
  type PropertyType "Message" DashboardErrorProperty = Value Prelude.Text
  set newValue DashboardErrorProperty {..}
    = DashboardErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" DashboardErrorProperty where
  type PropertyType "Type" DashboardErrorProperty = Value Prelude.Text
  set newValue DashboardErrorProperty {..}
    = DashboardErrorProperty {type' = Prelude.pure newValue, ..}