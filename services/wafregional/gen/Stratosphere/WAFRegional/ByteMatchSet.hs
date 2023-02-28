module Stratosphere.WAFRegional.ByteMatchSet (
        module Exports, ByteMatchSet(..), mkByteMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.ByteMatchSet.ByteMatchTupleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ByteMatchSet
  = ByteMatchSet {byteMatchTuples :: (Prelude.Maybe [ByteMatchTupleProperty]),
                  name :: (Value Prelude.Text)}
mkByteMatchSet :: Value Prelude.Text -> ByteMatchSet
mkByteMatchSet name
  = ByteMatchSet {name = name, byteMatchTuples = Prelude.Nothing}
instance ToResourceProperties ByteMatchSet where
  toResourceProperties ByteMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::ByteMatchSet",
         supportsTags = Prelude.False,
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