module Stratosphere.Lightsail.Distribution.CacheBehaviorProperty (
        CacheBehaviorProperty(..), mkCacheBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CacheBehaviorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehavior.html>
    CacheBehaviorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehavior.html#cfn-lightsail-distribution-cachebehavior-behavior>
                           behavior :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheBehaviorProperty :: CacheBehaviorProperty
mkCacheBehaviorProperty
  = CacheBehaviorProperty
      {haddock_workaround_ = (), behavior = Prelude.Nothing}
instance ToResourceProperties CacheBehaviorProperty where
  toResourceProperties CacheBehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.CacheBehavior",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Behavior" Prelude.<$> behavior])}
instance JSON.ToJSON CacheBehaviorProperty where
  toJSON CacheBehaviorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Behavior" Prelude.<$> behavior]))
instance Property "Behavior" CacheBehaviorProperty where
  type PropertyType "Behavior" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {behavior = Prelude.pure newValue, ..}