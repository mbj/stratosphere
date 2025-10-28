module Stratosphere.WAFv2.WebACL.JsonMatchPatternProperty (
        JsonMatchPatternProperty(..), mkJsonMatchPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonMatchPatternProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonmatchpattern.html>
    JsonMatchPatternProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonmatchpattern.html#cfn-wafv2-webacl-jsonmatchpattern-all>
                              all :: (Prelude.Maybe JSON.Object),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonmatchpattern.html#cfn-wafv2-webacl-jsonmatchpattern-includedpaths>
                              includedPaths :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonMatchPatternProperty :: JsonMatchPatternProperty
mkJsonMatchPatternProperty
  = JsonMatchPatternProperty
      {all = Prelude.Nothing, includedPaths = Prelude.Nothing}
instance ToResourceProperties JsonMatchPatternProperty where
  toResourceProperties JsonMatchPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.JsonMatchPattern",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "All" Prelude.<$> all,
                            (JSON..=) "IncludedPaths" Prelude.<$> includedPaths])}
instance JSON.ToJSON JsonMatchPatternProperty where
  toJSON JsonMatchPatternProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "All" Prelude.<$> all,
               (JSON..=) "IncludedPaths" Prelude.<$> includedPaths]))
instance Property "All" JsonMatchPatternProperty where
  type PropertyType "All" JsonMatchPatternProperty = JSON.Object
  set newValue JsonMatchPatternProperty {..}
    = JsonMatchPatternProperty {all = Prelude.pure newValue, ..}
instance Property "IncludedPaths" JsonMatchPatternProperty where
  type PropertyType "IncludedPaths" JsonMatchPatternProperty = ValueList Prelude.Text
  set newValue JsonMatchPatternProperty {..}
    = JsonMatchPatternProperty
        {includedPaths = Prelude.pure newValue, ..}