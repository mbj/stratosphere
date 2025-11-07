module Stratosphere.IoTSiteWise.ComputationModel.AssetPropertyBindingValueProperty (
        AssetPropertyBindingValueProperty(..),
        mkAssetPropertyBindingValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyBindingValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-assetpropertybindingvalue.html>
    AssetPropertyBindingValueProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-assetpropertybindingvalue.html#cfn-iotsitewise-computationmodel-assetpropertybindingvalue-assetid>
                                       assetId :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-assetpropertybindingvalue.html#cfn-iotsitewise-computationmodel-assetpropertybindingvalue-propertyid>
                                       propertyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetPropertyBindingValueProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AssetPropertyBindingValueProperty
mkAssetPropertyBindingValueProperty assetId propertyId
  = AssetPropertyBindingValueProperty
      {haddock_workaround_ = (), assetId = assetId,
       propertyId = propertyId}
instance ToResourceProperties AssetPropertyBindingValueProperty where
  toResourceProperties AssetPropertyBindingValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::ComputationModel.AssetPropertyBindingValue",
         supportsTags = Prelude.False,
         properties = ["AssetId" JSON..= assetId,
                       "PropertyId" JSON..= propertyId]}
instance JSON.ToJSON AssetPropertyBindingValueProperty where
  toJSON AssetPropertyBindingValueProperty {..}
    = JSON.object
        ["AssetId" JSON..= assetId, "PropertyId" JSON..= propertyId]
instance Property "AssetId" AssetPropertyBindingValueProperty where
  type PropertyType "AssetId" AssetPropertyBindingValueProperty = Value Prelude.Text
  set newValue AssetPropertyBindingValueProperty {..}
    = AssetPropertyBindingValueProperty {assetId = newValue, ..}
instance Property "PropertyId" AssetPropertyBindingValueProperty where
  type PropertyType "PropertyId" AssetPropertyBindingValueProperty = Value Prelude.Text
  set newValue AssetPropertyBindingValueProperty {..}
    = AssetPropertyBindingValueProperty {propertyId = newValue, ..}