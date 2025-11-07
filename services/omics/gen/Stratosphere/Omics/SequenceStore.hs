module Stratosphere.Omics.SequenceStore (
        module Exports, SequenceStore(..), mkSequenceStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.SequenceStore.SseConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SequenceStore
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html>
    SequenceStore {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-accessloglocation>
                   accessLogLocation :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-etagalgorithmfamily>
                   eTagAlgorithmFamily :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-fallbacklocation>
                   fallbackLocation :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-propagatedsetleveltags>
                   propagatedSetLevelTags :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-s3accesspolicy>
                   s3AccessPolicy :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-sseconfig>
                   sseConfig :: (Prelude.Maybe SseConfigProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSequenceStore :: Value Prelude.Text -> SequenceStore
mkSequenceStore name
  = SequenceStore
      {haddock_workaround_ = (), name = name,
       accessLogLocation = Prelude.Nothing, description = Prelude.Nothing,
       eTagAlgorithmFamily = Prelude.Nothing,
       fallbackLocation = Prelude.Nothing,
       propagatedSetLevelTags = Prelude.Nothing,
       s3AccessPolicy = Prelude.Nothing, sseConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SequenceStore where
  toResourceProperties SequenceStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::SequenceStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLogLocation" Prelude.<$> accessLogLocation,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ETagAlgorithmFamily" Prelude.<$> eTagAlgorithmFamily,
                               (JSON..=) "FallbackLocation" Prelude.<$> fallbackLocation,
                               (JSON..=) "PropagatedSetLevelTags"
                                 Prelude.<$> propagatedSetLevelTags,
                               (JSON..=) "S3AccessPolicy" Prelude.<$> s3AccessPolicy,
                               (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SequenceStore where
  toJSON SequenceStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLogLocation" Prelude.<$> accessLogLocation,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ETagAlgorithmFamily" Prelude.<$> eTagAlgorithmFamily,
                  (JSON..=) "FallbackLocation" Prelude.<$> fallbackLocation,
                  (JSON..=) "PropagatedSetLevelTags"
                    Prelude.<$> propagatedSetLevelTags,
                  (JSON..=) "S3AccessPolicy" Prelude.<$> s3AccessPolicy,
                  (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessLogLocation" SequenceStore where
  type PropertyType "AccessLogLocation" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {accessLogLocation = Prelude.pure newValue, ..}
instance Property "Description" SequenceStore where
  type PropertyType "Description" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {description = Prelude.pure newValue, ..}
instance Property "ETagAlgorithmFamily" SequenceStore where
  type PropertyType "ETagAlgorithmFamily" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {eTagAlgorithmFamily = Prelude.pure newValue, ..}
instance Property "FallbackLocation" SequenceStore where
  type PropertyType "FallbackLocation" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {fallbackLocation = Prelude.pure newValue, ..}
instance Property "Name" SequenceStore where
  type PropertyType "Name" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {name = newValue, ..}
instance Property "PropagatedSetLevelTags" SequenceStore where
  type PropertyType "PropagatedSetLevelTags" SequenceStore = ValueList Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore
        {propagatedSetLevelTags = Prelude.pure newValue, ..}
instance Property "S3AccessPolicy" SequenceStore where
  type PropertyType "S3AccessPolicy" SequenceStore = JSON.Object
  set newValue SequenceStore {..}
    = SequenceStore {s3AccessPolicy = Prelude.pure newValue, ..}
instance Property "SseConfig" SequenceStore where
  type PropertyType "SseConfig" SequenceStore = SseConfigProperty
  set newValue SequenceStore {..}
    = SequenceStore {sseConfig = Prelude.pure newValue, ..}
instance Property "Tags" SequenceStore where
  type PropertyType "Tags" SequenceStore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SequenceStore {..}
    = SequenceStore {tags = Prelude.pure newValue, ..}