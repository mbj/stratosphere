module Stratosphere.ElastiCache.ServerlessCache.DataStorageProperty (
        DataStorageProperty(..), mkDataStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataStorageProperty
  = DataStorageProperty {maximum :: (Value Prelude.Integer),
                         unit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataStorageProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> DataStorageProperty
mkDataStorageProperty maximum unit
  = DataStorageProperty {maximum = maximum, unit = unit}
instance ToResourceProperties DataStorageProperty where
  toResourceProperties DataStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache.DataStorage",
         supportsTags = Prelude.False,
         properties = ["Maximum" JSON..= maximum, "Unit" JSON..= unit]}
instance JSON.ToJSON DataStorageProperty where
  toJSON DataStorageProperty {..}
    = JSON.object ["Maximum" JSON..= maximum, "Unit" JSON..= unit]
instance Property "Maximum" DataStorageProperty where
  type PropertyType "Maximum" DataStorageProperty = Value Prelude.Integer
  set newValue DataStorageProperty {..}
    = DataStorageProperty {maximum = newValue, ..}
instance Property "Unit" DataStorageProperty where
  type PropertyType "Unit" DataStorageProperty = Value Prelude.Text
  set newValue DataStorageProperty {..}
    = DataStorageProperty {unit = newValue, ..}