module Stratosphere.ElastiCache.ServerlessCache.ECPUPerSecondProperty (
        ECPUPerSecondProperty(..), mkECPUPerSecondProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ECPUPerSecondProperty
  = ECPUPerSecondProperty {maximum :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkECPUPerSecondProperty ::
  Value Prelude.Integer -> ECPUPerSecondProperty
mkECPUPerSecondProperty maximum
  = ECPUPerSecondProperty {maximum = maximum}
instance ToResourceProperties ECPUPerSecondProperty where
  toResourceProperties ECPUPerSecondProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache.ECPUPerSecond",
         supportsTags = Prelude.False,
         properties = ["Maximum" JSON..= maximum]}
instance JSON.ToJSON ECPUPerSecondProperty where
  toJSON ECPUPerSecondProperty {..}
    = JSON.object ["Maximum" JSON..= maximum]
instance Property "Maximum" ECPUPerSecondProperty where
  type PropertyType "Maximum" ECPUPerSecondProperty = Value Prelude.Integer
  set newValue ECPUPerSecondProperty {}
    = ECPUPerSecondProperty {maximum = newValue, ..}