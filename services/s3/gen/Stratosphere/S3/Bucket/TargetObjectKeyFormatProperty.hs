module Stratosphere.S3.Bucket.TargetObjectKeyFormatProperty (
        module Exports, TargetObjectKeyFormatProperty(..),
        mkTargetObjectKeyFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.PartitionedPrefixProperty as Exports
import Stratosphere.ResourceProperties
data TargetObjectKeyFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-targetobjectkeyformat.html>
    TargetObjectKeyFormatProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-targetobjectkeyformat.html#cfn-s3-bucket-targetobjectkeyformat-partitionedprefix>
                                   partitionedPrefix :: (Prelude.Maybe PartitionedPrefixProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-targetobjectkeyformat.html#cfn-s3-bucket-targetobjectkeyformat-simpleprefix>
                                   simplePrefix :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetObjectKeyFormatProperty :: TargetObjectKeyFormatProperty
mkTargetObjectKeyFormatProperty
  = TargetObjectKeyFormatProperty
      {haddock_workaround_ = (), partitionedPrefix = Prelude.Nothing,
       simplePrefix = Prelude.Nothing}
instance ToResourceProperties TargetObjectKeyFormatProperty where
  toResourceProperties TargetObjectKeyFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.TargetObjectKeyFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PartitionedPrefix" Prelude.<$> partitionedPrefix,
                            (JSON..=) "SimplePrefix" Prelude.<$> simplePrefix])}
instance JSON.ToJSON TargetObjectKeyFormatProperty where
  toJSON TargetObjectKeyFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PartitionedPrefix" Prelude.<$> partitionedPrefix,
               (JSON..=) "SimplePrefix" Prelude.<$> simplePrefix]))
instance Property "PartitionedPrefix" TargetObjectKeyFormatProperty where
  type PropertyType "PartitionedPrefix" TargetObjectKeyFormatProperty = PartitionedPrefixProperty
  set newValue TargetObjectKeyFormatProperty {..}
    = TargetObjectKeyFormatProperty
        {partitionedPrefix = Prelude.pure newValue, ..}
instance Property "SimplePrefix" TargetObjectKeyFormatProperty where
  type PropertyType "SimplePrefix" TargetObjectKeyFormatProperty = JSON.Object
  set newValue TargetObjectKeyFormatProperty {..}
    = TargetObjectKeyFormatProperty
        {simplePrefix = Prelude.pure newValue, ..}