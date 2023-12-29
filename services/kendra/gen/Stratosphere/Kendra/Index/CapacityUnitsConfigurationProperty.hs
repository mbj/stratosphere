module Stratosphere.Kendra.Index.CapacityUnitsConfigurationProperty (
        CapacityUnitsConfigurationProperty(..),
        mkCapacityUnitsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityUnitsConfigurationProperty
  = CapacityUnitsConfigurationProperty {queryCapacityUnits :: (Value Prelude.Integer),
                                        storageCapacityUnits :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityUnitsConfigurationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> CapacityUnitsConfigurationProperty
mkCapacityUnitsConfigurationProperty
  queryCapacityUnits
  storageCapacityUnits
  = CapacityUnitsConfigurationProperty
      {queryCapacityUnits = queryCapacityUnits,
       storageCapacityUnits = storageCapacityUnits}
instance ToResourceProperties CapacityUnitsConfigurationProperty where
  toResourceProperties CapacityUnitsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.CapacityUnitsConfiguration",
         supportsTags = Prelude.False,
         properties = ["QueryCapacityUnits" JSON..= queryCapacityUnits,
                       "StorageCapacityUnits" JSON..= storageCapacityUnits]}
instance JSON.ToJSON CapacityUnitsConfigurationProperty where
  toJSON CapacityUnitsConfigurationProperty {..}
    = JSON.object
        ["QueryCapacityUnits" JSON..= queryCapacityUnits,
         "StorageCapacityUnits" JSON..= storageCapacityUnits]
instance Property "QueryCapacityUnits" CapacityUnitsConfigurationProperty where
  type PropertyType "QueryCapacityUnits" CapacityUnitsConfigurationProperty = Value Prelude.Integer
  set newValue CapacityUnitsConfigurationProperty {..}
    = CapacityUnitsConfigurationProperty
        {queryCapacityUnits = newValue, ..}
instance Property "StorageCapacityUnits" CapacityUnitsConfigurationProperty where
  type PropertyType "StorageCapacityUnits" CapacityUnitsConfigurationProperty = Value Prelude.Integer
  set newValue CapacityUnitsConfigurationProperty {..}
    = CapacityUnitsConfigurationProperty
        {storageCapacityUnits = newValue, ..}