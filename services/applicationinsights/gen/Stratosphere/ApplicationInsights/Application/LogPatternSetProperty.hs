module Stratosphere.ApplicationInsights.Application.LogPatternSetProperty (
        module Exports, LogPatternSetProperty(..), mkLogPatternSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.LogPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogPatternSetProperty
  = LogPatternSetProperty {logPatterns :: [LogPatternProperty],
                           patternSetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogPatternSetProperty ::
  [LogPatternProperty] -> Value Prelude.Text -> LogPatternSetProperty
mkLogPatternSetProperty logPatterns patternSetName
  = LogPatternSetProperty
      {logPatterns = logPatterns, patternSetName = patternSetName}
instance ToResourceProperties LogPatternSetProperty where
  toResourceProperties LogPatternSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.LogPatternSet",
         supportsTags = Prelude.False,
         properties = ["LogPatterns" JSON..= logPatterns,
                       "PatternSetName" JSON..= patternSetName]}
instance JSON.ToJSON LogPatternSetProperty where
  toJSON LogPatternSetProperty {..}
    = JSON.object
        ["LogPatterns" JSON..= logPatterns,
         "PatternSetName" JSON..= patternSetName]
instance Property "LogPatterns" LogPatternSetProperty where
  type PropertyType "LogPatterns" LogPatternSetProperty = [LogPatternProperty]
  set newValue LogPatternSetProperty {..}
    = LogPatternSetProperty {logPatterns = newValue, ..}
instance Property "PatternSetName" LogPatternSetProperty where
  type PropertyType "PatternSetName" LogPatternSetProperty = Value Prelude.Text
  set newValue LogPatternSetProperty {..}
    = LogPatternSetProperty {patternSetName = newValue, ..}