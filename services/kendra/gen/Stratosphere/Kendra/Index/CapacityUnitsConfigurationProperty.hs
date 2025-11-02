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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-capacityunitsconfiguration.html>
    CapacityUnitsConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-capacityunitsconfiguration.html#cfn-kendra-index-capacityunitsconfiguration-querycapacityunits>
                                        queryCapacityUnits :: (Value Prelude.Integer),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-capacityunitsconfiguration.html#cfn-kendra-index-capacityunitsconfiguration-storagecapacityunits>
                                        storageCapacityUnits :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityUnitsConfigurationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> CapacityUnitsConfigurationProperty
mkCapacityUnitsConfigurationProperty
  queryCapacityUnits
  storageCapacityUnits
  = CapacityUnitsConfigurationProperty
      {haddock_workaround_ = (), queryCapacityUnits = queryCapacityUnits,
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