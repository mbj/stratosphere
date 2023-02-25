module Stratosphere.IoTSiteWise.Asset.AssetPropertyProperty (
        AssetPropertyProperty(..), mkAssetPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyProperty
  = AssetPropertyProperty {alias :: (Prelude.Maybe (Value Prelude.Text)),
                           logicalId :: (Value Prelude.Text),
                           notificationState :: (Prelude.Maybe (Value Prelude.Text)),
                           unit :: (Prelude.Maybe (Value Prelude.Text))}
mkAssetPropertyProperty ::
  Value Prelude.Text -> AssetPropertyProperty
mkAssetPropertyProperty logicalId
  = AssetPropertyProperty
      {logicalId = logicalId, alias = Prelude.Nothing,
       notificationState = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties AssetPropertyProperty where
  toResourceProperties AssetPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Asset.AssetProperty",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogicalId" JSON..= logicalId]
                           (Prelude.catMaybes
                              [(JSON..=) "Alias" Prelude.<$> alias,
                               (JSON..=) "NotificationState" Prelude.<$> notificationState,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON AssetPropertyProperty where
  toJSON AssetPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogicalId" JSON..= logicalId]
              (Prelude.catMaybes
                 [(JSON..=) "Alias" Prelude.<$> alias,
                  (JSON..=) "NotificationState" Prelude.<$> notificationState,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Alias" AssetPropertyProperty where
  type PropertyType "Alias" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {alias = Prelude.pure newValue, ..}
instance Property "LogicalId" AssetPropertyProperty where
  type PropertyType "LogicalId" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {logicalId = newValue, ..}
instance Property "NotificationState" AssetPropertyProperty where
  type PropertyType "NotificationState" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty
        {notificationState = Prelude.pure newValue, ..}
instance Property "Unit" AssetPropertyProperty where
  type PropertyType "Unit" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {unit = Prelude.pure newValue, ..}