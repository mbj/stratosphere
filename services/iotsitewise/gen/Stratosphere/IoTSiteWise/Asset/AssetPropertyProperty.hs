module Stratosphere.IoTSiteWise.Asset.AssetPropertyProperty (
        AssetPropertyProperty(..), mkAssetPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html>
    AssetPropertyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html#cfn-iotsitewise-asset-assetproperty-alias>
                           alias :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html#cfn-iotsitewise-asset-assetproperty-externalid>
                           externalId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html#cfn-iotsitewise-asset-assetproperty-id>
                           id :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html#cfn-iotsitewise-asset-assetproperty-logicalid>
                           logicalId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html#cfn-iotsitewise-asset-assetproperty-notificationstate>
                           notificationState :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-asset-assetproperty.html#cfn-iotsitewise-asset-assetproperty-unit>
                           unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetPropertyProperty :: AssetPropertyProperty
mkAssetPropertyProperty
  = AssetPropertyProperty
      {haddock_workaround_ = (), alias = Prelude.Nothing,
       externalId = Prelude.Nothing, id = Prelude.Nothing,
       logicalId = Prelude.Nothing, notificationState = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties AssetPropertyProperty where
  toResourceProperties AssetPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Asset.AssetProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alias" Prelude.<$> alias,
                            (JSON..=) "ExternalId" Prelude.<$> externalId,
                            (JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "LogicalId" Prelude.<$> logicalId,
                            (JSON..=) "NotificationState" Prelude.<$> notificationState,
                            (JSON..=) "Unit" Prelude.<$> unit])}
instance JSON.ToJSON AssetPropertyProperty where
  toJSON AssetPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alias" Prelude.<$> alias,
               (JSON..=) "ExternalId" Prelude.<$> externalId,
               (JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "LogicalId" Prelude.<$> logicalId,
               (JSON..=) "NotificationState" Prelude.<$> notificationState,
               (JSON..=) "Unit" Prelude.<$> unit]))
instance Property "Alias" AssetPropertyProperty where
  type PropertyType "Alias" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {alias = Prelude.pure newValue, ..}
instance Property "ExternalId" AssetPropertyProperty where
  type PropertyType "ExternalId" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {externalId = Prelude.pure newValue, ..}
instance Property "Id" AssetPropertyProperty where
  type PropertyType "Id" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {id = Prelude.pure newValue, ..}
instance Property "LogicalId" AssetPropertyProperty where
  type PropertyType "LogicalId" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {logicalId = Prelude.pure newValue, ..}
instance Property "NotificationState" AssetPropertyProperty where
  type PropertyType "NotificationState" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty
        {notificationState = Prelude.pure newValue, ..}
instance Property "Unit" AssetPropertyProperty where
  type PropertyType "Unit" AssetPropertyProperty = Value Prelude.Text
  set newValue AssetPropertyProperty {..}
    = AssetPropertyProperty {unit = Prelude.pure newValue, ..}