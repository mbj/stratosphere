module Stratosphere.IoTSiteWise.AssetModel.EnforcedAssetModelInterfaceRelationshipProperty (
        module Exports,
        EnforcedAssetModelInterfaceRelationshipProperty(..),
        mkEnforcedAssetModelInterfaceRelationshipProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.EnforcedAssetModelInterfacePropertyMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnforcedAssetModelInterfaceRelationshipProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacerelationship.html>
    EnforcedAssetModelInterfaceRelationshipProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacerelationship.html#cfn-iotsitewise-assetmodel-enforcedassetmodelinterfacerelationship-interfaceassetmodelid>
                                                     interfaceAssetModelId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-enforcedassetmodelinterfacerelationship.html#cfn-iotsitewise-assetmodel-enforcedassetmodelinterfacerelationship-propertymappings>
                                                     propertyMappings :: (Prelude.Maybe [EnforcedAssetModelInterfacePropertyMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnforcedAssetModelInterfaceRelationshipProperty ::
  EnforcedAssetModelInterfaceRelationshipProperty
mkEnforcedAssetModelInterfaceRelationshipProperty
  = EnforcedAssetModelInterfaceRelationshipProperty
      {haddock_workaround_ = (), interfaceAssetModelId = Prelude.Nothing,
       propertyMappings = Prelude.Nothing}
instance ToResourceProperties EnforcedAssetModelInterfaceRelationshipProperty where
  toResourceProperties
    EnforcedAssetModelInterfaceRelationshipProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.EnforcedAssetModelInterfaceRelationship",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InterfaceAssetModelId"
                              Prelude.<$> interfaceAssetModelId,
                            (JSON..=) "PropertyMappings" Prelude.<$> propertyMappings])}
instance JSON.ToJSON EnforcedAssetModelInterfaceRelationshipProperty where
  toJSON EnforcedAssetModelInterfaceRelationshipProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InterfaceAssetModelId"
                 Prelude.<$> interfaceAssetModelId,
               (JSON..=) "PropertyMappings" Prelude.<$> propertyMappings]))
instance Property "InterfaceAssetModelId" EnforcedAssetModelInterfaceRelationshipProperty where
  type PropertyType "InterfaceAssetModelId" EnforcedAssetModelInterfaceRelationshipProperty = Value Prelude.Text
  set newValue EnforcedAssetModelInterfaceRelationshipProperty {..}
    = EnforcedAssetModelInterfaceRelationshipProperty
        {interfaceAssetModelId = Prelude.pure newValue, ..}
instance Property "PropertyMappings" EnforcedAssetModelInterfaceRelationshipProperty where
  type PropertyType "PropertyMappings" EnforcedAssetModelInterfaceRelationshipProperty = [EnforcedAssetModelInterfacePropertyMappingProperty]
  set newValue EnforcedAssetModelInterfaceRelationshipProperty {..}
    = EnforcedAssetModelInterfaceRelationshipProperty
        {propertyMappings = Prelude.pure newValue, ..}