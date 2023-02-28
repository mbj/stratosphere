module Stratosphere.WAFv2.RegexPatternSet (
        RegexPatternSet(..), mkRegexPatternSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RegexPatternSet
  = RegexPatternSet {description :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     regularExpressionList :: (ValueList Prelude.Text),
                     scope :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag])}
mkRegexPatternSet ::
  ValueList Prelude.Text -> Value Prelude.Text -> RegexPatternSet
mkRegexPatternSet regularExpressionList scope
  = RegexPatternSet
      {regularExpressionList = regularExpressionList, scope = scope,
       description = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RegexPatternSet where
  toResourceProperties RegexPatternSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RegexPatternSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RegularExpressionList" JSON..= regularExpressionList,
                            "Scope" JSON..= scope]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RegexPatternSet where
  toJSON RegexPatternSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RegularExpressionList" JSON..= regularExpressionList,
               "Scope" JSON..= scope]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" RegexPatternSet where
  type PropertyType "Description" RegexPatternSet = Value Prelude.Text
  set newValue RegexPatternSet {..}
    = RegexPatternSet {description = Prelude.pure newValue, ..}
instance Property "Name" RegexPatternSet where
  type PropertyType "Name" RegexPatternSet = Value Prelude.Text
  set newValue RegexPatternSet {..}
    = RegexPatternSet {name = Prelude.pure newValue, ..}
instance Property "RegularExpressionList" RegexPatternSet where
  type PropertyType "RegularExpressionList" RegexPatternSet = ValueList Prelude.Text
  set newValue RegexPatternSet {..}
    = RegexPatternSet {regularExpressionList = newValue, ..}
instance Property "Scope" RegexPatternSet where
  type PropertyType "Scope" RegexPatternSet = Value Prelude.Text
  set newValue RegexPatternSet {..}
    = RegexPatternSet {scope = newValue, ..}
instance Property "Tags" RegexPatternSet where
  type PropertyType "Tags" RegexPatternSet = [Tag]
  set newValue RegexPatternSet {..}
    = RegexPatternSet {tags = Prelude.pure newValue, ..}