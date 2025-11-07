module Stratosphere.WAFv2.WebACL.RegexProperty (
        RegexProperty(..), mkRegexProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegexProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regex.html>
    RegexProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regex.html#cfn-wafv2-webacl-regex-regexstring>
                   regexString :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexProperty :: RegexProperty
mkRegexProperty
  = RegexProperty
      {haddock_workaround_ = (), regexString = Prelude.Nothing}
instance ToResourceProperties RegexProperty where
  toResourceProperties RegexProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.Regex",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegexString" Prelude.<$> regexString])}
instance JSON.ToJSON RegexProperty where
  toJSON RegexProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegexString" Prelude.<$> regexString]))
instance Property "RegexString" RegexProperty where
  type PropertyType "RegexString" RegexProperty = Value Prelude.Text
  set newValue RegexProperty {..}
    = RegexProperty {regexString = Prelude.pure newValue, ..}