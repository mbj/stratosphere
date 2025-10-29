module Stratosphere.WAF.ByteMatchSet (
        module Exports, ByteMatchSet(..), mkByteMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.ByteMatchSet.ByteMatchTupleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ByteMatchSet
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html>
    ByteMatchSet {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-bytematchtuples>
                  byteMatchTuples :: (Prelude.Maybe [ByteMatchTupleProperty]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-name>
                  name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkByteMatchSet :: Value Prelude.Text -> ByteMatchSet
mkByteMatchSet name
  = ByteMatchSet {name = name, byteMatchTuples = Prelude.Nothing}
instance ToResourceProperties ByteMatchSet where
  toResourceProperties ByteMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAF::ByteMatchSet", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ByteMatchTuples" Prelude.<$> byteMatchTuples]))}
instance JSON.ToJSON ByteMatchSet where
  toJSON ByteMatchSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ByteMatchTuples" Prelude.<$> byteMatchTuples])))
instance Property "ByteMatchTuples" ByteMatchSet where
  type PropertyType "ByteMatchTuples" ByteMatchSet = [ByteMatchTupleProperty]
  set newValue ByteMatchSet {..}
    = ByteMatchSet {byteMatchTuples = Prelude.pure newValue, ..}
instance Property "Name" ByteMatchSet where
  type PropertyType "Name" ByteMatchSet = Value Prelude.Text
  set newValue ByteMatchSet {..} = ByteMatchSet {name = newValue, ..}