module Stratosphere.WAFv2.WebACL.RateLimitQueryStringProperty (
        module Exports, RateLimitQueryStringProperty(..),
        mkRateLimitQueryStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
data RateLimitQueryStringProperty
  = RateLimitQueryStringProperty {textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitQueryStringProperty ::
  [TextTransformationProperty] -> RateLimitQueryStringProperty
mkRateLimitQueryStringProperty textTransformations
  = RateLimitQueryStringProperty
      {textTransformations = textTransformations}
instance ToResourceProperties RateLimitQueryStringProperty where
  toResourceProperties RateLimitQueryStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateLimitQueryString",
         supportsTags = Prelude.False,
         properties = ["TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RateLimitQueryStringProperty where
  toJSON RateLimitQueryStringProperty {..}
    = JSON.object ["TextTransformations" JSON..= textTransformations]
instance Property "TextTransformations" RateLimitQueryStringProperty where
  type PropertyType "TextTransformations" RateLimitQueryStringProperty = [TextTransformationProperty]
  set newValue RateLimitQueryStringProperty {}
    = RateLimitQueryStringProperty {textTransformations = newValue, ..}