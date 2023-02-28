module Stratosphere.ElasticLoadBalancingV2.TargetGroup.MatcherProperty (
        MatcherProperty(..), mkMatcherProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatcherProperty
  = MatcherProperty {grpcCode :: (Prelude.Maybe (Value Prelude.Text)),
                     httpCode :: (Prelude.Maybe (Value Prelude.Text))}
mkMatcherProperty :: MatcherProperty
mkMatcherProperty
  = MatcherProperty
      {grpcCode = Prelude.Nothing, httpCode = Prelude.Nothing}
instance ToResourceProperties MatcherProperty where
  toResourceProperties MatcherProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TargetGroup.Matcher",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GrpcCode" Prelude.<$> grpcCode,
                            (JSON..=) "HttpCode" Prelude.<$> httpCode])}
instance JSON.ToJSON MatcherProperty where
  toJSON MatcherProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GrpcCode" Prelude.<$> grpcCode,
               (JSON..=) "HttpCode" Prelude.<$> httpCode]))
instance Property "GrpcCode" MatcherProperty where
  type PropertyType "GrpcCode" MatcherProperty = Value Prelude.Text
  set newValue MatcherProperty {..}
    = MatcherProperty {grpcCode = Prelude.pure newValue, ..}
instance Property "HttpCode" MatcherProperty where
  type PropertyType "HttpCode" MatcherProperty = Value Prelude.Text
  set newValue MatcherProperty {..}
    = MatcherProperty {httpCode = Prelude.pure newValue, ..}