module Stratosphere.IoTSiteWise.AssetModel.EnforcedAssetModelInterfacePropertyMappingProperty (
        EnforcedAssetModelInterfacePropertyMappingProperty(..),
        mkEnforcedAssetModelInterfacePropertyMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnforcedAssetModelInterfacePropertyMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping.html>
    EnforcedAssetModelInterfacePropertyMappingProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping.html#cfn-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping-assetmodelpropertyexternalid>
                                                        assetModelPropertyExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping.html#cfn-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping-assetmodelpropertylogicalid>
                                                        assetModelPropertyLogicalId :: (Prelude.Maybe (Value Prelude.Text)),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping.html#cfn-iotsitewise-assetmodel-enforcedassetmodelinterfacepropertymapping-interfaceassetmodelpropertyexternalid>
                                                        interfaceAssetModelPropertyExternalId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnforcedAssetModelInterfacePropertyMappingProperty ::
  Value Prelude.Text
  -> EnforcedAssetModelInterfacePropertyMappingProperty
mkEnforcedAssetModelInterfacePropertyMappingProperty
  interfaceAssetModelPropertyExternalId
  = EnforcedAssetModelInterfacePropertyMappingProperty
      {haddock_workaround_ = (),
       interfaceAssetModelPropertyExternalId = interfaceAssetModelPropertyExternalId,
       assetModelPropertyExternalId = Prelude.Nothing,
       assetModelPropertyLogicalId = Prelude.Nothing}
instance ToResourceProperties EnforcedAssetModelInterfacePropertyMappingProperty where
  toResourceProperties
    EnforcedAssetModelInterfacePropertyMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.EnforcedAssetModelInterfacePropertyMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InterfaceAssetModelPropertyExternalId"
                              JSON..= interfaceAssetModelPropertyExternalId]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetModelPropertyExternalId"
                                 Prelude.<$> assetModelPropertyExternalId,
                               (JSON..=) "AssetModelPropertyLogicalId"
                                 Prelude.<$> assetModelPropertyLogicalId]))}
instance JSON.ToJSON EnforcedAssetModelInterfacePropertyMappingProperty where
  toJSON EnforcedAssetModelInterfacePropertyMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InterfaceAssetModelPropertyExternalId"
                 JSON..= interfaceAssetModelPropertyExternalId]
              (Prelude.catMaybes
                 [(JSON..=) "AssetModelPropertyExternalId"
                    Prelude.<$> assetModelPropertyExternalId,
                  (JSON..=) "AssetModelPropertyLogicalId"
                    Prelude.<$> assetModelPropertyLogicalId])))
instance Property "AssetModelPropertyExternalId" EnforcedAssetModelInterfacePropertyMappingProperty where
  type PropertyType "AssetModelPropertyExternalId" EnforcedAssetModelInterfacePropertyMappingProperty = Value Prelude.Text
  set
    newValue
    EnforcedAssetModelInterfacePropertyMappingProperty {..}
    = EnforcedAssetModelInterfacePropertyMappingProperty
        {assetModelPropertyExternalId = Prelude.pure newValue, ..}
instance Property "AssetModelPropertyLogicalId" EnforcedAssetModelInterfacePropertyMappingProperty where
  type PropertyType "AssetModelPropertyLogicalId" EnforcedAssetModelInterfacePropertyMappingProperty = Value Prelude.Text
  set
    newValue
    EnforcedAssetModelInterfacePropertyMappingProperty {..}
    = EnforcedAssetModelInterfacePropertyMappingProperty
        {assetModelPropertyLogicalId = Prelude.pure newValue, ..}
instance Property "InterfaceAssetModelPropertyExternalId" EnforcedAssetModelInterfacePropertyMappingProperty where
  type PropertyType "InterfaceAssetModelPropertyExternalId" EnforcedAssetModelInterfacePropertyMappingProperty = Value Prelude.Text
  set
    newValue
    EnforcedAssetModelInterfacePropertyMappingProperty {..}
    = EnforcedAssetModelInterfacePropertyMappingProperty
        {interfaceAssetModelPropertyExternalId = newValue, ..}