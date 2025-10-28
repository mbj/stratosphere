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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html>
    RegexPatternSet {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-name>
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-regularexpressionlist>
                     regularExpressionList :: (ValueList Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-scope>
                     scope :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexPatternSet ::
  ValueList Prelude.Text -> Value Prelude.Text -> RegexPatternSet
mkRegexPatternSet regularExpressionList scope
  = RegexPatternSet
      {haddock_workaround_ = (),
       regularExpressionList = regularExpressionList, scope = scope,
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