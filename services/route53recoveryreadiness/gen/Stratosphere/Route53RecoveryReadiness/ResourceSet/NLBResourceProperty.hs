module Stratosphere.Route53RecoveryReadiness.ResourceSet.NLBResourceProperty (
        NLBResourceProperty(..), mkNLBResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NLBResourceProperty
  = NLBResourceProperty {arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNLBResourceProperty :: NLBResourceProperty
mkNLBResourceProperty = NLBResourceProperty {arn = Prelude.Nothing}
instance ToResourceProperties NLBResourceProperty where
  toResourceProperties NLBResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ResourceSet.NLBResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON NLBResourceProperty where
  toJSON NLBResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" NLBResourceProperty where
  type PropertyType "Arn" NLBResourceProperty = Value Prelude.Text
  set newValue NLBResourceProperty {}
    = NLBResourceProperty {arn = Prelude.pure newValue, ..}