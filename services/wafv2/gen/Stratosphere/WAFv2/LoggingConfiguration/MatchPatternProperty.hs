module Stratosphere.WAFv2.LoggingConfiguration.MatchPatternProperty (
        MatchPatternProperty(..), mkMatchPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchPatternProperty
  = MatchPatternProperty {all :: (Prelude.Maybe JSON.Object),
                          includedPaths :: (Prelude.Maybe (ValueList Prelude.Text))}
mkMatchPatternProperty :: MatchPatternProperty
mkMatchPatternProperty
  = MatchPatternProperty
      {all = Prelude.Nothing, includedPaths = Prelude.Nothing}
instance ToResourceProperties MatchPatternProperty where
  toResourceProperties MatchPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.MatchPattern",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "All" Prelude.<$> all,
                            (JSON..=) "IncludedPaths" Prelude.<$> includedPaths])}
instance JSON.ToJSON MatchPatternProperty where
  toJSON MatchPatternProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "All" Prelude.<$> all,
               (JSON..=) "IncludedPaths" Prelude.<$> includedPaths]))
instance Property "All" MatchPatternProperty where
  type PropertyType "All" MatchPatternProperty = JSON.Object
  set newValue MatchPatternProperty {..}
    = MatchPatternProperty {all = Prelude.pure newValue, ..}
instance Property "IncludedPaths" MatchPatternProperty where
  type PropertyType "IncludedPaths" MatchPatternProperty = ValueList Prelude.Text
  set newValue MatchPatternProperty {..}
    = MatchPatternProperty {includedPaths = Prelude.pure newValue, ..}