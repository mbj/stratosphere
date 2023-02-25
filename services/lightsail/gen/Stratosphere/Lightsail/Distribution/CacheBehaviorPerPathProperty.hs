module Stratosphere.Lightsail.Distribution.CacheBehaviorPerPathProperty (
        CacheBehaviorPerPathProperty(..), mkCacheBehaviorPerPathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CacheBehaviorPerPathProperty
  = CacheBehaviorPerPathProperty {behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                  path :: (Prelude.Maybe (Value Prelude.Text))}
mkCacheBehaviorPerPathProperty :: CacheBehaviorPerPathProperty
mkCacheBehaviorPerPathProperty
  = CacheBehaviorPerPathProperty
      {behavior = Prelude.Nothing, path = Prelude.Nothing}
instance ToResourceProperties CacheBehaviorPerPathProperty where
  toResourceProperties CacheBehaviorPerPathProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.CacheBehaviorPerPath",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Behavior" Prelude.<$> behavior,
                            (JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON CacheBehaviorPerPathProperty where
  toJSON CacheBehaviorPerPathProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Behavior" Prelude.<$> behavior,
               (JSON..=) "Path" Prelude.<$> path]))
instance Property "Behavior" CacheBehaviorPerPathProperty where
  type PropertyType "Behavior" CacheBehaviorPerPathProperty = Value Prelude.Text
  set newValue CacheBehaviorPerPathProperty {..}
    = CacheBehaviorPerPathProperty
        {behavior = Prelude.pure newValue, ..}
instance Property "Path" CacheBehaviorPerPathProperty where
  type PropertyType "Path" CacheBehaviorPerPathProperty = Value Prelude.Text
  set newValue CacheBehaviorPerPathProperty {..}
    = CacheBehaviorPerPathProperty {path = Prelude.pure newValue, ..}