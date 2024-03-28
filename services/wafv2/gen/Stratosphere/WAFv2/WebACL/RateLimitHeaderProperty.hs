module Stratosphere.WAFv2.WebACL.RateLimitHeaderProperty (
        module Exports, RateLimitHeaderProperty(..),
        mkRateLimitHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitHeaderProperty
  = RateLimitHeaderProperty {name :: (Value Prelude.Text),
                             textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitHeaderProperty ::
  Value Prelude.Text
  -> [TextTransformationProperty] -> RateLimitHeaderProperty
mkRateLimitHeaderProperty name textTransformations
  = RateLimitHeaderProperty
      {name = name, textTransformations = textTransformations}
instance ToResourceProperties RateLimitHeaderProperty where
  toResourceProperties RateLimitHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateLimitHeader",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RateLimitHeaderProperty where
  toJSON RateLimitHeaderProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "TextTransformations" JSON..= textTransformations]
instance Property "Name" RateLimitHeaderProperty where
  type PropertyType "Name" RateLimitHeaderProperty = Value Prelude.Text
  set newValue RateLimitHeaderProperty {..}
    = RateLimitHeaderProperty {name = newValue, ..}
instance Property "TextTransformations" RateLimitHeaderProperty where
  type PropertyType "TextTransformations" RateLimitHeaderProperty = [TextTransformationProperty]
  set newValue RateLimitHeaderProperty {..}
    = RateLimitHeaderProperty {textTransformations = newValue, ..}