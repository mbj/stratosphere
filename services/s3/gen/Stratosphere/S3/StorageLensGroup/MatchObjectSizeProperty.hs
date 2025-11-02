module Stratosphere.S3.StorageLensGroup.MatchObjectSizeProperty (
        MatchObjectSizeProperty(..), mkMatchObjectSizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchObjectSizeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-matchobjectsize.html>
    MatchObjectSizeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-matchobjectsize.html#cfn-s3-storagelensgroup-matchobjectsize-bytesgreaterthan>
                             bytesGreaterThan :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-matchobjectsize.html#cfn-s3-storagelensgroup-matchobjectsize-byteslessthan>
                             bytesLessThan :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchObjectSizeProperty :: MatchObjectSizeProperty
mkMatchObjectSizeProperty
  = MatchObjectSizeProperty
      {haddock_workaround_ = (), bytesGreaterThan = Prelude.Nothing,
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