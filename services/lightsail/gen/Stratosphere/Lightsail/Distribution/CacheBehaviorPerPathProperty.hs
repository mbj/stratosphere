module Stratosphere.Lightsail.Distribution.CacheBehaviorPerPathProperty (
        CacheBehaviorPerPathProperty(..), mkCacheBehaviorPerPathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CacheBehaviorPerPathProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehaviorperpath.html>
    CacheBehaviorPerPathProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehaviorperpath.html#cfn-lightsail-distribution-cachebehaviorperpath-behavior>
                                  behavior :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehaviorperpath.html#cfn-lightsail-distribution-cachebehaviorperpath-path>
                                  path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheBehaviorPerPathProperty :: CacheBehaviorPerPathProperty
mkCacheBehaviorPerPathProperty
  = CacheBehaviorPerPathProperty
      {haddock_workaround_ = (), behavior = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties CacheBehaviorPerPathProperty where
  toResourceProperties CacheBehaviorPerPathProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.CacheBehaviorPerPath",
         supportsTags = Prelude.False,
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