module Stratosphere.ApplicationInsights.Application.LogPatternProperty (
        LogPatternProperty(..), mkLogPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogPatternProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html>
    LogPatternProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html#cfn-applicationinsights-application-logpattern-pattern>
                        pattern :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html#cfn-applicationinsights-application-logpattern-patternname>
                        patternName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html#cfn-applicationinsights-application-logpattern-rank>
                        rank :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogPatternProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer -> LogPatternProperty
mkLogPatternProperty pattern patternName rank
  = LogPatternProperty
      {haddock_workaround_ = (), pattern = pattern,
       patternName = patternName, rank = rank}
instance ToResourceProperties LogPatternProperty where
  toResourceProperties LogPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.LogPattern",
         supportsTags = Prelude.False,
         properties = ["Pattern" JSON..= pattern,
                       "PatternName" JSON..= patternName, "Rank" JSON..= rank]}
instance JSON.ToJSON LogPatternProperty where
  toJSON LogPatternProperty {..}
    = JSON.object
        ["Pattern" JSON..= pattern, "PatternName" JSON..= patternName,
         "Rank" JSON..= rank]
instance Property "Pattern" LogPatternProperty where
  type PropertyType "Pattern" LogPatternProperty = Value Prelude.Text
  set newValue LogPatternProperty {..}
    = LogPatternProperty {pattern = newValue, ..}
instance Property "PatternName" LogPatternProperty where
  type PropertyType "PatternName" LogPatternProperty = Value Prelude.Text
  set newValue LogPatternProperty {..}
    = LogPatternProperty {patternName = newValue, ..}
instance Property "Rank" LogPatternProperty where
  type PropertyType "Rank" LogPatternProperty = Value Prelude.Integer
  set newValue LogPatternProperty {..}
    = LogPatternProperty {rank = newValue, ..}