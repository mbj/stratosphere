module Stratosphere.WAFRegional.RegexPatternSet (
        RegexPatternSet(..), mkRegexPatternSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegexPatternSet
  = RegexPatternSet {name :: (Value Prelude.Text),
                     regexPatternStrings :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexPatternSet ::
  Value Prelude.Text -> ValueList Prelude.Text -> RegexPatternSet
mkRegexPatternSet name regexPatternStrings
  = RegexPatternSet
      {name = name, regexPatternStrings = regexPatternStrings}
instance ToResourceProperties RegexPatternSet where
  toResourceProperties RegexPatternSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::RegexPatternSet",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "RegexPatternStrings" JSON..= regexPatternStrings]}
instance JSON.ToJSON RegexPatternSet where
  toJSON RegexPatternSet {..}
    = JSON.object
        ["Name" JSON..= name,
         "RegexPatternStrings" JSON..= regexPatternStrings]
instance Property "Name" RegexPatternSet where
  type PropertyType "Name" RegexPatternSet = Value Prelude.Text
  set newValue RegexPatternSet {..}
    = RegexPatternSet {name = newValue, ..}
instance Property "RegexPatternStrings" RegexPatternSet where
  type PropertyType "RegexPatternStrings" RegexPatternSet = ValueList Prelude.Text
  set newValue RegexPatternSet {..}
    = RegexPatternSet {regexPatternStrings = newValue, ..}