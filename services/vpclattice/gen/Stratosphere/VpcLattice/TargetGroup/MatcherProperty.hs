module Stratosphere.VpcLattice.TargetGroup.MatcherProperty (
        MatcherProperty(..), mkMatcherProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatcherProperty
  = MatcherProperty {httpCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatcherProperty :: Value Prelude.Text -> MatcherProperty
mkMatcherProperty httpCode = MatcherProperty {httpCode = httpCode}
instance ToResourceProperties MatcherProperty where
  toResourceProperties MatcherProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::TargetGroup.Matcher",
         supportsTags = Prelude.False,
         properties = ["HttpCode" JSON..= httpCode]}
instance JSON.ToJSON MatcherProperty where
  toJSON MatcherProperty {..}
    = JSON.object ["HttpCode" JSON..= httpCode]
instance Property "HttpCode" MatcherProperty where
  type PropertyType "HttpCode" MatcherProperty = Value Prelude.Text
  set newValue MatcherProperty {}
    = MatcherProperty {httpCode = newValue, ..}