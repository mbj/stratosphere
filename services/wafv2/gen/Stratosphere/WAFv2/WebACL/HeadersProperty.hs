module Stratosphere.WAFv2.WebACL.HeadersProperty (
        module Exports, HeadersProperty(..), mkHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.HeaderMatchPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeadersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headers.html>
    HeadersProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headers.html#cfn-wafv2-webacl-headers-matchpattern>
                     matchPattern :: HeaderMatchPatternProperty,
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headers.html#cfn-wafv2-webacl-headers-matchscope>
                     matchScope :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-headers.html#cfn-wafv2-webacl-headers-oversizehandling>
                     oversizeHandling :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeadersProperty ::
  HeaderMatchPatternProperty
  -> Value Prelude.Text -> Value Prelude.Text -> HeadersProperty
mkHeadersProperty matchPattern matchScope oversizeHandling
  = HeadersProperty
      {haddock_workaround_ = (), matchPattern = matchPattern,
       matchScope = matchScope, oversizeHandling = oversizeHandling}
instance ToResourceProperties HeadersProperty where
  toResourceProperties HeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.Headers",
         supportsTags = Prelude.False,
         properties = ["MatchPattern" JSON..= matchPattern,
                       "MatchScope" JSON..= matchScope,
                       "OversizeHandling" JSON..= oversizeHandling]}
instance JSON.ToJSON HeadersProperty where
  toJSON HeadersProperty {..}
    = JSON.object
        ["MatchPattern" JSON..= matchPattern,
         "MatchScope" JSON..= matchScope,
         "OversizeHandling" JSON..= oversizeHandling]
instance Property "MatchPattern" HeadersProperty where
  type PropertyType "MatchPattern" HeadersProperty = HeaderMatchPatternProperty
  set newValue HeadersProperty {..}
    = HeadersProperty {matchPattern = newValue, ..}
instance Property "MatchScope" HeadersProperty where
  type PropertyType "MatchScope" HeadersProperty = Value Prelude.Text
  set newValue HeadersProperty {..}
    = HeadersProperty {matchScope = newValue, ..}
instance Property "OversizeHandling" HeadersProperty where
  type PropertyType "OversizeHandling" HeadersProperty = Value Prelude.Text
  set newValue HeadersProperty {..}
    = HeadersProperty {oversizeHandling = newValue, ..}