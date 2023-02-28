module Stratosphere.CloudFront.Distribution.OriginShieldProperty (
        OriginShieldProperty(..), mkOriginShieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginShieldProperty
  = OriginShieldProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          originShieldRegion :: (Prelude.Maybe (Value Prelude.Text))}
mkOriginShieldProperty :: OriginShieldProperty
mkOriginShieldProperty
  = OriginShieldProperty
      {enabled = Prelude.Nothing, originShieldRegion = Prelude.Nothing}
instance ToResourceProperties OriginShieldProperty where
  toResourceProperties OriginShieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginShield",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "OriginShieldRegion" Prelude.<$> originShieldRegion])}
instance JSON.ToJSON OriginShieldProperty where
  toJSON OriginShieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "OriginShieldRegion" Prelude.<$> originShieldRegion]))
instance Property "Enabled" OriginShieldProperty where
  type PropertyType "Enabled" OriginShieldProperty = Value Prelude.Bool
  set newValue OriginShieldProperty {..}
    = OriginShieldProperty {enabled = Prelude.pure newValue, ..}
instance Property "OriginShieldRegion" OriginShieldProperty where
  type PropertyType "OriginShieldRegion" OriginShieldProperty = Value Prelude.Text
  set newValue OriginShieldProperty {..}
    = OriginShieldProperty
        {originShieldRegion = Prelude.pure newValue, ..}