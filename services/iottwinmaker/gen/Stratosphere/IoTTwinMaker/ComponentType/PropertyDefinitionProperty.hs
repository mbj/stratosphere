module Stratosphere.IoTTwinMaker.ComponentType.PropertyDefinitionProperty (
        module Exports, PropertyDefinitionProperty(..),
        mkPropertyDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.DataTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.DataValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyDefinitionProperty
  = PropertyDefinitionProperty {configurations :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                dataType :: (Prelude.Maybe DataTypeProperty),
                                defaultValue :: (Prelude.Maybe DataValueProperty),
                                isExternalId :: (Prelude.Maybe (Value Prelude.Bool)),
                                isRequiredInEntity :: (Prelude.Maybe (Value Prelude.Bool)),
                                isStoredExternally :: (Prelude.Maybe (Value Prelude.Bool)),
                                isTimeSeries :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyDefinitionProperty :: PropertyDefinitionProperty
mkPropertyDefinitionProperty
  = PropertyDefinitionProperty
      {configurations = Prelude.Nothing, dataType = Prelude.Nothing,
       defaultValue = Prelude.Nothing, isExternalId = Prelude.Nothing,
       isRequiredInEntity = Prelude.Nothing,
       isStoredExternally = Prelude.Nothing,
       isTimeSeries = Prelude.Nothing}
instance ToResourceProperties PropertyDefinitionProperty where
  toResourceProperties PropertyDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.PropertyDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configurations" Prelude.<$> configurations,
                            (JSON..=) "DataType" Prelude.<$> dataType,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "IsExternalId" Prelude.<$> isExternalId,
                            (JSON..=) "IsRequiredInEntity" Prelude.<$> isRequiredInEntity,
                            (JSON..=) "IsStoredExternally" Prelude.<$> isStoredExternally,
                            (JSON..=) "IsTimeSeries" Prelude.<$> isTimeSeries])}
instance JSON.ToJSON PropertyDefinitionProperty where
  toJSON PropertyDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configurations" Prelude.<$> configurations,
               (JSON..=) "DataType" Prelude.<$> dataType,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "IsExternalId" Prelude.<$> isExternalId,
               (JSON..=) "IsRequiredInEntity" Prelude.<$> isRequiredInEntity,
               (JSON..=) "IsStoredExternally" Prelude.<$> isStoredExternally,
               (JSON..=) "IsTimeSeries" Prelude.<$> isTimeSeries]))
instance Property "Configurations" PropertyDefinitionProperty where
  type PropertyType "Configurations" PropertyDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty
        {configurations = Prelude.pure newValue, ..}
instance Property "DataType" PropertyDefinitionProperty where
  type PropertyType "DataType" PropertyDefinitionProperty = DataTypeProperty
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty {dataType = Prelude.pure newValue, ..}
instance Property "DefaultValue" PropertyDefinitionProperty where
  type PropertyType "DefaultValue" PropertyDefinitionProperty = DataValueProperty
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "IsExternalId" PropertyDefinitionProperty where
  type PropertyType "IsExternalId" PropertyDefinitionProperty = Value Prelude.Bool
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty
        {isExternalId = Prelude.pure newValue, ..}
instance Property "IsRequiredInEntity" PropertyDefinitionProperty where
  type PropertyType "IsRequiredInEntity" PropertyDefinitionProperty = Value Prelude.Bool
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty
        {isRequiredInEntity = Prelude.pure newValue, ..}
instance Property "IsStoredExternally" PropertyDefinitionProperty where
  type PropertyType "IsStoredExternally" PropertyDefinitionProperty = Value Prelude.Bool
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty
        {isStoredExternally = Prelude.pure newValue, ..}
instance Property "IsTimeSeries" PropertyDefinitionProperty where
  type PropertyType "IsTimeSeries" PropertyDefinitionProperty = Value Prelude.Bool
  set newValue PropertyDefinitionProperty {..}
    = PropertyDefinitionProperty
        {isTimeSeries = Prelude.pure newValue, ..}