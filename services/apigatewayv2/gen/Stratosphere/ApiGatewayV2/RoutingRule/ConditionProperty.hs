module Stratosphere.ApiGatewayV2.RoutingRule.ConditionProperty (
        module Exports, ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RoutingRule.MatchBasePathsProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RoutingRule.MatchHeadersProperty as Exports
import Stratosphere.ResourceProperties
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-condition.html#cfn-apigatewayv2-routingrule-condition-matchbasepaths>
                       matchBasePaths :: (Prelude.Maybe MatchBasePathsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-condition.html#cfn-apigatewayv2-routingrule-condition-matchheaders>
                       matchHeaders :: (Prelude.Maybe MatchHeadersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {haddock_workaround_ = (), matchBasePaths = Prelude.Nothing,
       matchHeaders = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule.Condition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MatchBasePaths" Prelude.<$> matchBasePaths,
                            (JSON..=) "MatchHeaders" Prelude.<$> matchHeaders])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MatchBasePaths" Prelude.<$> matchBasePaths,
               (JSON..=) "MatchHeaders" Prelude.<$> matchHeaders]))
instance Property "MatchBasePaths" ConditionProperty where
  type PropertyType "MatchBasePaths" ConditionProperty = MatchBasePathsProperty
  set newValue ConditionProperty {..}
    = ConditionProperty {matchBasePaths = Prelude.pure newValue, ..}
instance Property "MatchHeaders" ConditionProperty where
  type PropertyType "MatchHeaders" ConditionProperty = MatchHeadersProperty
  set newValue ConditionProperty {..}
    = ConditionProperty {matchHeaders = Prelude.pure newValue, ..}