module Stratosphere.WAFv2.WebACL.ByteMatchStatementProperty (
        module Exports, ByteMatchStatementProperty(..),
        mkByteMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ByteMatchStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html>
    ByteMatchStatementProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-fieldtomatch>
                                fieldToMatch :: FieldToMatchProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-positionalconstraint>
                                positionalConstraint :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-searchstring>
                                searchString :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-searchstringbase64>
                                searchStringBase64 :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-texttransformations>
                                textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkByteMatchStatementProperty ::
  FieldToMatchProperty
  -> Value Prelude.Text
     -> [TextTransformationProperty] -> ByteMatchStatementProperty
mkByteMatchStatementProperty
  fieldToMatch
  positionalConstraint
  textTransformations
  = ByteMatchStatementProperty
      {haddock_workaround_ = (), fieldToMatch = fieldToMatch,
       positionalConstraint = positionalConstraint,
       textTransformations = textTransformations,
       searchString = Prelude.Nothing,
       searchStringBase64 = Prelude.Nothing}
instance ToResourceProperties ByteMatchStatementProperty where
  toResourceProperties ByteMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ByteMatchStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldToMatch" JSON..= fieldToMatch,
                            "PositionalConstraint" JSON..= positionalConstraint,
                            "TextTransformations" JSON..= textTransformations]
                           (Prelude.catMaybes
                              [(JSON..=) "SearchString" Prelude.<$> searchString,
                               (JSON..=) "SearchStringBase64" Prelude.<$> searchStringBase64]))}
instance JSON.ToJSON ByteMatchStatementProperty where
  toJSON ByteMatchStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldToMatch" JSON..= fieldToMatch,
               "PositionalConstraint" JSON..= positionalConstraint,
               "TextTransformations" JSON..= textTransformations]
              (Prelude.catMaybes
                 [(JSON..=) "SearchString" Prelude.<$> searchString,
                  (JSON..=) "SearchStringBase64" Prelude.<$> searchStringBase64])))
instance Property "FieldToMatch" ByteMatchStatementProperty where
  type PropertyType "FieldToMatch" ByteMatchStatementProperty = FieldToMatchProperty
  set newValue ByteMatchStatementProperty {..}
    = ByteMatchStatementProperty {fieldToMatch = newValue, ..}
instance Property "PositionalConstraint" ByteMatchStatementProperty where
  type PropertyType "PositionalConstraint" ByteMatchStatementProperty = Value Prelude.Text
  set newValue ByteMatchStatementProperty {..}
    = ByteMatchStatementProperty {positionalConstraint = newValue, ..}
instance Property "SearchString" ByteMatchStatementProperty where
  type PropertyType "SearchString" ByteMatchStatementProperty = Value Prelude.Text
  set newValue ByteMatchStatementProperty {..}
    = ByteMatchStatementProperty
        {searchString = Prelude.pure newValue, ..}
instance Property "SearchStringBase64" ByteMatchStatementProperty where
  type PropertyType "SearchStringBase64" ByteMatchStatementProperty = Value Prelude.Text
  set newValue ByteMatchStatementProperty {..}
    = ByteMatchStatementProperty
        {searchStringBase64 = Prelude.pure newValue, ..}
instance Property "TextTransformations" ByteMatchStatementProperty where
  type PropertyType "TextTransformations" ByteMatchStatementProperty = [TextTransformationProperty]
  set newValue ByteMatchStatementProperty {..}
    = ByteMatchStatementProperty {textTransformations = newValue, ..}