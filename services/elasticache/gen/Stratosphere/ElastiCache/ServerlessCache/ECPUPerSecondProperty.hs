module Stratosphere.ElastiCache.ServerlessCache.ECPUPerSecondProperty (
        ECPUPerSecondProperty(..), mkECPUPerSecondProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ECPUPerSecondProperty
  = ECPUPerSecondProperty {maximum :: (Prelude.Maybe (Value Prelude.Integer)),
                           minimum :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkECPUPerSecondProperty :: ECPUPerSecondProperty
mkECPUPerSecondProperty
  = ECPUPerSecondProperty
      {maximum = Prelude.Nothing, minimum = Prelude.Nothing}
instance ToResourceProperties ECPUPerSecondProperty where
  toResourceProperties ECPUPerSecondProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache.ECPUPerSecond",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Maximum" Prelude.<$> maximum,
                            (JSON..=) "Minimum" Prelude.<$> minimum])}
instance JSON.ToJSON ECPUPerSecondProperty where
  toJSON ECPUPerSecondProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Maximum" Prelude.<$> maximum,
               (JSON..=) "Minimum" Prelude.<$> minimum]))
instance Property "Maximum" ECPUPerSecondProperty where
  type PropertyType "Maximum" ECPUPerSecondProperty = Value Prelude.Integer
  set newValue ECPUPerSecondProperty {..}
    = ECPUPerSecondProperty {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" ECPUPerSecondProperty where
  type PropertyType "Minimum" ECPUPerSecondProperty = Value Prelude.Integer
  set newValue ECPUPerSecondProperty {..}
    = ECPUPerSecondProperty {minimum = Prelude.pure newValue, ..}