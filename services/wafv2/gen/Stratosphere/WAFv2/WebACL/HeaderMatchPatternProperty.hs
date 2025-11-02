module Stratosphere.WAFv2.WebACL.HeaderMatchPatternProperty (
        HeaderMatchPatternProperty(..), mkHeaderMatchPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderMatchPatternProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headermatchpattern.html>
    HeaderMatchPatternProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headermatchpattern.html#cfn-wafv2-webacl-headermatchpattern-all>
                                all :: (Prelude.Maybe JSON.Object),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headermatchpattern.html#cfn-wafv2-webacl-headermatchpattern-excludedheaders>
                                excludedHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headermatchpattern.html#cfn-wafv2-webacl-headermatchpattern-includedheaders>
                                includedHeaders :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderMatchPatternProperty :: HeaderMatchPatternProperty
mkHeaderMatchPatternProperty
  = HeaderMatchPatternProperty
      {haddock_workaround_ = (), all = Prelude.Nothing,
       excludedHeaders = Prelude.Nothing,
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