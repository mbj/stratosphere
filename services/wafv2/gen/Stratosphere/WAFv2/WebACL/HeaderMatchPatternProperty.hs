module Stratosphere.WAFv2.WebACL.HeaderMatchPatternProperty (
        HeaderMatchPatternProperty(..), mkHeaderMatchPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderMatchPatternProperty
  = HeaderMatchPatternProperty {all :: (Prelude.Maybe JSON.Object),
                                excludedHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                                includedHeaders :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderMatchPatternProperty :: HeaderMatchPatternProperty
mkHeaderMatchPatternProperty
  = HeaderMatchPatternProperty
      {all = Prelude.Nothing, excludedHeaders = Prelude.Nothing,
       includedHeaders = Prelude.Nothing}
instance ToResourceProperties HeaderMatchPatternProperty where
  toResourceProperties HeaderMatchPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.HeaderMatchPattern",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "All" Prelude.<$> all,
                            (JSON..=) "ExcludedHeaders" Prelude.<$> excludedHeaders,
                            (JSON..=) "IncludedHeaders" Prelude.<$> includedHeaders])}
instance JSON.ToJSON HeaderMatchPatternProperty where
  toJSON HeaderMatchPatternProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "All" Prelude.<$> all,
               (JSON..=) "ExcludedHeaders" Prelude.<$> excludedHeaders,
               (JSON..=) "IncludedHeaders" Prelude.<$> includedHeaders]))
instance Property "All" HeaderMatchPatternProperty where
  type PropertyType "All" HeaderMatchPatternProperty = JSON.Object
  set newValue HeaderMatchPatternProperty {..}
    = HeaderMatchPatternProperty {all = Prelude.pure newValue, ..}
instance Property "ExcludedHeaders" HeaderMatchPatternProperty where
  type PropertyType "ExcludedHeaders" HeaderMatchPatternProperty = ValueList Prelude.Text
  set newValue HeaderMatchPatternProperty {..}
    = HeaderMatchPatternProperty
        {excludedHeaders = Prelude.pure newValue, ..}
instance Property "IncludedHeaders" HeaderMatchPatternProperty where
  type PropertyType "IncludedHeaders" HeaderMatchPatternProperty = ValueList Prelude.Text
  set newValue HeaderMatchPatternProperty {..}
    = HeaderMatchPatternProperty
        {includedHeaders = Prelude.pure newValue, ..}