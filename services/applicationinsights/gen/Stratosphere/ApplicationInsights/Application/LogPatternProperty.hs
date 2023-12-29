module Stratosphere.ApplicationInsights.Application.LogPatternProperty (
        LogPatternProperty(..), mkLogPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogPatternProperty
  = LogPatternProperty {pattern :: (Value Prelude.Text),
                        patternName :: (Value Prelude.Text),
                        rank :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogPatternProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer -> LogPatternProperty
mkLogPatternProperty pattern patternName rank
  = LogPatternProperty
      {pattern = pattern, patternName = patternName, rank = rank}
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