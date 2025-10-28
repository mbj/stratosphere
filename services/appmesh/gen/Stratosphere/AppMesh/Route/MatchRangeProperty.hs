module Stratosphere.AppMesh.Route.MatchRangeProperty (
        MatchRangeProperty(..), mkMatchRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html>
    MatchRangeProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html#cfn-appmesh-route-matchrange-end>
                        end :: (Value Prelude.Integer),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html#cfn-appmesh-route-matchrange-start>
                        start :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchRangeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> MatchRangeProperty
mkMatchRangeProperty end start
  = MatchRangeProperty
      {haddock_workaround_ = (), end = end, start = start}
instance ToResourceProperties MatchRangeProperty where
  toResourceProperties MatchRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.MatchRange",
         supportsTags = Prelude.False,
         properties = ["End" JSON..= end, "Start" JSON..= start]}
instance JSON.ToJSON MatchRangeProperty where
  toJSON MatchRangeProperty {..}
    = JSON.object ["End" JSON..= end, "Start" JSON..= start]
instance Property "End" MatchRangeProperty where
  type PropertyType "End" MatchRangeProperty = Value Prelude.Integer
  set newValue MatchRangeProperty {..}
    = MatchRangeProperty {end = newValue, ..}
instance Property "Start" MatchRangeProperty where
  type PropertyType "Start" MatchRangeProperty = Value Prelude.Integer
  set newValue MatchRangeProperty {..}
    = MatchRangeProperty {start = newValue, ..}