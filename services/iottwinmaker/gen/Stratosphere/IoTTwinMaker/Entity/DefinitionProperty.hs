module Stratosphere.IoTTwinMaker.Entity.DefinitionProperty (
        module Exports, DefinitionProperty(..), mkDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DataTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DataValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html>
    DefinitionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-configuration>
                        configuration :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-datatype>
                        dataType :: (Prelude.Maybe DataTypeProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-defaultvalue>
                        defaultValue :: (Prelude.Maybe DataValueProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-isexternalid>
                        isExternalId :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-isfinal>
                        isFinal :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-isimported>
                        isImported :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-isinherited>
                        isInherited :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-isrequiredinentity>
                        isRequiredInEntity :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-isstoredexternally>
                        isStoredExternally :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-definition.html#cfn-iottwinmaker-entity-definition-istimeseries>
                        isTimeSeries :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefinitionProperty :: DefinitionProperty
mkDefinitionProperty
  = DefinitionProperty
      {haddock_workaround_ = (), configuration = Prelude.Nothing,
       dataType = Prelude.Nothing, defaultValue = Prelude.Nothing,
       isExternalId = Prelude.Nothing, isFinal = Prelude.Nothing,
       isImported = Prelude.Nothing, isInherited = Prelude.Nothing,
       isRequiredInEntity = Prelude.Nothing,
       isStoredExternally = Prelude.Nothing,
       isTimeSeries = Prelude.Nothing}
instance ToResourceProperties DefinitionProperty where
  toResourceProperties DefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Definition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "DataType" Prelude.<$> dataType,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "IsExternalId" Prelude.<$> isExternalId,
                            (JSON..=) "IsFinal" Prelude.<$> isFinal,
                            (JSON..=) "IsImported" Prelude.<$> isImported,
                            (JSON..=) "IsInherited" Prelude.<$> isInherited,
                            (JSON..=) "IsRequiredInEntity" Prelude.<$> isRequiredInEntity,
                            (JSON..=) "IsStoredExternally" Prelude.<$> isStoredExternally,
                            (JSON..=) "IsTimeSeries" Prelude.<$> isTimeSeries])}
instance JSON.ToJSON DefinitionProperty where
  toJSON DefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "DataType" Prelude.<$> dataType,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "IsExternalId" Prelude.<$> isExternalId,
               (JSON..=) "IsFinal" Prelude.<$> isFinal,
               (JSON..=) "IsImported" Prelude.<$> isImported,
               (JSON..=) "IsInherited" Prelude.<$> isInherited,
               (JSON..=) "IsRequiredInEntity" Prelude.<$> isRequiredInEntity,
               (JSON..=) "IsStoredExternally" Prelude.<$> isStoredExternally,
               (JSON..=) "IsTimeSeries" Prelude.<$> isTimeSeries]))
instance Property "Configuration" DefinitionProperty where
  type PropertyType "Configuration" DefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DefinitionProperty {..}
    = DefinitionProperty {configuration = Prelude.pure newValue, ..}
instance Property "DataType" DefinitionProperty where
  type PropertyType "DataType" DefinitionProperty = DataTypeProperty
  set newValue DefinitionProperty {..}
    = DefinitionProperty {dataType = Prelude.pure newValue, ..}
instance Property "DefaultValue" DefinitionProperty where
  type PropertyType "DefaultValue" DefinitionProperty = DataValueProperty
  set newValue DefinitionProperty {..}
    = DefinitionProperty {defaultValue = Prelude.pure newValue, ..}
instance Property "IsExternalId" DefinitionProperty where
  type PropertyType "IsExternalId" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty {isExternalId = Prelude.pure newValue, ..}
instance Property "IsFinal" DefinitionProperty where
  type PropertyType "IsFinal" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty {isFinal = Prelude.pure newValue, ..}
instance Property "IsImported" DefinitionProperty where
  type PropertyType "IsImported" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty {isImported = Prelude.pure newValue, ..}
instance Property "IsInherited" DefinitionProperty where
  type PropertyType "IsInherited" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty {isInherited = Prelude.pure newValue, ..}
instance Property "IsRequiredInEntity" DefinitionProperty where
  type PropertyType "IsRequiredInEntity" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty
        {isRequiredInEntity = Prelude.pure newValue, ..}
instance Property "IsStoredExternally" DefinitionProperty where
  type PropertyType "IsStoredExternally" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty
        {isStoredExternally = Prelude.pure newValue, ..}
instance Property "IsTimeSeries" DefinitionProperty where
  type PropertyType "IsTimeSeries" DefinitionProperty = Value Prelude.Bool
  set newValue DefinitionProperty {..}
    = DefinitionProperty {isTimeSeries = Prelude.pure newValue, ..}