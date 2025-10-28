module Stratosphere.S3.Bucket.NoncurrentVersionTransitionProperty (
        NoncurrentVersionTransitionProperty(..),
        mkNoncurrentVersionTransitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NoncurrentVersionTransitionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-noncurrentversiontransition.html>
    NoncurrentVersionTransitionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-noncurrentversiontransition.html#cfn-s3-bucket-noncurrentversiontransition-newernoncurrentversions>
                                         newerNoncurrentVersions :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-noncurrentversiontransition.html#cfn-s3-bucket-noncurrentversiontransition-storageclass>
                                         storageClass :: (Value Prelude.Text),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-noncurrentversiontransition.html#cfn-s3-bucket-noncurrentversiontransition-transitionindays>
                                         transitionInDays :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNoncurrentVersionTransitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> NoncurrentVersionTransitionProperty
mkNoncurrentVersionTransitionProperty storageClass transitionInDays
  = NoncurrentVersionTransitionProperty
      {storageClass = storageClass, transitionInDays = transitionInDays,
       newerNoncurrentVersions = Prelude.Nothing}
instance ToResourceProperties NoncurrentVersionTransitionProperty where
  toResourceProperties NoncurrentVersionTransitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.NoncurrentVersionTransition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StorageClass" JSON..= storageClass,
                            "TransitionInDays" JSON..= transitionInDays]
                           (Prelude.catMaybes
                              [(JSON..=) "NewerNoncurrentVersions"
                                 Prelude.<$> newerNoncurrentVersions]))}
instance JSON.ToJSON NoncurrentVersionTransitionProperty where
  toJSON NoncurrentVersionTransitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StorageClass" JSON..= storageClass,
               "TransitionInDays" JSON..= transitionInDays]
              (Prelude.catMaybes
                 [(JSON..=) "NewerNoncurrentVersions"
                    Prelude.<$> newerNoncurrentVersions])))
instance Property "NewerNoncurrentVersions" NoncurrentVersionTransitionProperty where
  type PropertyType "NewerNoncurrentVersions" NoncurrentVersionTransitionProperty = Value Prelude.Integer
  set newValue NoncurrentVersionTransitionProperty {..}
    = NoncurrentVersionTransitionProperty
        {newerNoncurrentVersions = Prelude.pure newValue, ..}
instance Property "StorageClass" NoncurrentVersionTransitionProperty where
  type PropertyType "StorageClass" NoncurrentVersionTransitionProperty = Value Prelude.Text
  set newValue NoncurrentVersionTransitionProperty {..}
    = NoncurrentVersionTransitionProperty {storageClass = newValue, ..}
instance Property "TransitionInDays" NoncurrentVersionTransitionProperty where
  type PropertyType "TransitionInDays" NoncurrentVersionTransitionProperty = Value Prelude.Integer
  set newValue NoncurrentVersionTransitionProperty {..}
    = NoncurrentVersionTransitionProperty
        {transitionInDays = newValue, ..}