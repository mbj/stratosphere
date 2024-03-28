module Stratosphere.S3.StorageLensGroup.MatchObjectSizeProperty (
        MatchObjectSizeProperty(..), mkMatchObjectSizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchObjectSizeProperty
  = MatchObjectSizeProperty {bytesGreaterThan :: (Prelude.Maybe (Value Prelude.Integer)),
                             bytesLessThan :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchObjectSizeProperty :: MatchObjectSizeProperty
mkMatchObjectSizeProperty
  = MatchObjectSizeProperty
      {bytesGreaterThan = Prelude.Nothing,
       bytesLessThan = Prelude.Nothing}
instance ToResourceProperties MatchObjectSizeProperty where
  toResourceProperties MatchObjectSizeProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLensGroup.MatchObjectSize",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BytesGreaterThan" Prelude.<$> bytesGreaterThan,
                            (JSON..=) "BytesLessThan" Prelude.<$> bytesLessThan])}
instance JSON.ToJSON MatchObjectSizeProperty where
  toJSON MatchObjectSizeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BytesGreaterThan" Prelude.<$> bytesGreaterThan,
               (JSON..=) "BytesLessThan" Prelude.<$> bytesLessThan]))
instance Property "BytesGreaterThan" MatchObjectSizeProperty where
  type PropertyType "BytesGreaterThan" MatchObjectSizeProperty = Value Prelude.Integer
  set newValue MatchObjectSizeProperty {..}
    = MatchObjectSizeProperty
        {bytesGreaterThan = Prelude.pure newValue, ..}
instance Property "BytesLessThan" MatchObjectSizeProperty where
  type PropertyType "BytesLessThan" MatchObjectSizeProperty = Value Prelude.Integer
  set newValue MatchObjectSizeProperty {..}
    = MatchObjectSizeProperty
        {bytesLessThan = Prelude.pure newValue, ..}