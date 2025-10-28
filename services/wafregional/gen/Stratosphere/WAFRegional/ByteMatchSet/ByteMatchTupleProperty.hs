module Stratosphere.WAFRegional.ByteMatchSet.ByteMatchTupleProperty (
        module Exports, ByteMatchTupleProperty(..),
        mkByteMatchTupleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.ByteMatchSet.FieldToMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ByteMatchTupleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html>
    ByteMatchTupleProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-fieldtomatch>
                            fieldToMatch :: FieldToMatchProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-positionalconstraint>
                            positionalConstraint :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstring>
                            targetString :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstringbase64>
                            targetStringBase64 :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-texttransformation>
                            textTransformation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkByteMatchTupleProperty ::
  FieldToMatchProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> ByteMatchTupleProperty
mkByteMatchTupleProperty
  fieldToMatch
  positionalConstraint
  textTransformation
  = ByteMatchTupleProperty
      {haddock_workaround_ = (), fieldToMatch = fieldToMatch,
       positionalConstraint = positionalConstraint,
       textTransformation = textTransformation,
       targetString = Prelude.Nothing,
       targetStringBase64 = Prelude.Nothing}
instance ToResourceProperties ByteMatchTupleProperty where
  toResourceProperties ByteMatchTupleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::ByteMatchSet.ByteMatchTuple",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldToMatch" JSON..= fieldToMatch,
                            "PositionalConstraint" JSON..= positionalConstraint,
                            "TextTransformation" JSON..= textTransformation]
                           (Prelude.catMaybes
                              [(JSON..=) "TargetString" Prelude.<$> targetString,
                               (JSON..=) "TargetStringBase64" Prelude.<$> targetStringBase64]))}
instance JSON.ToJSON ByteMatchTupleProperty where
  toJSON ByteMatchTupleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldToMatch" JSON..= fieldToMatch,
               "PositionalConstraint" JSON..= positionalConstraint,
               "TextTransformation" JSON..= textTransformation]
              (Prelude.catMaybes
                 [(JSON..=) "TargetString" Prelude.<$> targetString,
                  (JSON..=) "TargetStringBase64" Prelude.<$> targetStringBase64])))
instance Property "FieldToMatch" ByteMatchTupleProperty where
  type PropertyType "FieldToMatch" ByteMatchTupleProperty = FieldToMatchProperty
  set newValue ByteMatchTupleProperty {..}
    = ByteMatchTupleProperty {fieldToMatch = newValue, ..}
instance Property "PositionalConstraint" ByteMatchTupleProperty where
  type PropertyType "PositionalConstraint" ByteMatchTupleProperty = Value Prelude.Text
  set newValue ByteMatchTupleProperty {..}
    = ByteMatchTupleProperty {positionalConstraint = newValue, ..}
instance Property "TargetString" ByteMatchTupleProperty where
  type PropertyType "TargetString" ByteMatchTupleProperty = Value Prelude.Text
  set newValue ByteMatchTupleProperty {..}
    = ByteMatchTupleProperty {targetString = Prelude.pure newValue, ..}
instance Property "TargetStringBase64" ByteMatchTupleProperty where
  type PropertyType "TargetStringBase64" ByteMatchTupleProperty = Value Prelude.Text
  set newValue ByteMatchTupleProperty {..}
    = ByteMatchTupleProperty
        {targetStringBase64 = Prelude.pure newValue, ..}
instance Property "TextTransformation" ByteMatchTupleProperty where
  type PropertyType "TextTransformation" ByteMatchTupleProperty = Value Prelude.Text
  set newValue ByteMatchTupleProperty {..}
    = ByteMatchTupleProperty {textTransformation = newValue, ..}