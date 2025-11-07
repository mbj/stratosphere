module Stratosphere.IoTSiteWise.ComputationModel.AssetModelPropertyBindingValueProperty (
        AssetModelPropertyBindingValueProperty(..),
        mkAssetModelPropertyBindingValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetModelPropertyBindingValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-assetmodelpropertybindingvalue.html>
    AssetModelPropertyBindingValueProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-assetmodelpropertybindingvalue.html#cfn-iotsitewise-computationmodel-assetmodelpropertybindingvalue-assetmodelid>
                                            assetModelId :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-assetmodelpropertybindingvalue.html#cfn-iotsitewise-computationmodel-assetmodelpropertybindingvalue-propertyid>
                                            propertyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModelPropertyBindingValueProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AssetModelPropertyBindingValueProperty
mkAssetModelPropertyBindingValueProperty assetModelId propertyId
  = AssetModelPropertyBindingValueProperty
      {haddock_workaround_ = (), assetModelId = assetModelId,
       propertyId = propertyId}
instance ToResourceProperties AssetModelPropertyBindingValueProperty where
  toResourceProperties AssetModelPropertyBindingValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::ComputationModel.AssetModelPropertyBindingValue",
         supportsTags = Prelude.False,
         properties = ["AssetModelId" JSON..= assetModelId,
                       "PropertyId" JSON..= propertyId]}
instance JSON.ToJSON AssetModelPropertyBindingValueProperty where
  toJSON AssetModelPropertyBindingValueProperty {..}
    = JSON.object
        ["AssetModelId" JSON..= assetModelId,
         "PropertyId" JSON..= propertyId]
instance Property "AssetModelId" AssetModelPropertyBindingValueProperty where
  type PropertyType "AssetModelId" AssetModelPropertyBindingValueProperty = Value Prelude.Text
  set newValue AssetModelPropertyBindingValueProperty {..}
    = AssetModelPropertyBindingValueProperty
        {assetModelId = newValue, ..}
instance Property "PropertyId" AssetModelPropertyBindingValueProperty where
  type PropertyType "PropertyId" AssetModelPropertyBindingValueProperty = Value Prelude.Text
  set newValue AssetModelPropertyBindingValueProperty {..}
    = AssetModelPropertyBindingValueProperty
        {propertyId = newValue, ..}