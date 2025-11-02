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
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-fallbacklocation>
                   fallbackLocation :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-sseconfig>
                   sseConfig :: (Prelude.Maybe SseConfigProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-sequencestore.html#cfn-omics-sequencestore-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSequenceStore :: Value Prelude.Text -> SequenceStore
mkSequenceStore name
  = SequenceStore
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, fallbackLocation = Prelude.Nothing,
       sseConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SequenceStore where
  toResourceProperties SequenceStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::SequenceStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FallbackLocation" Prelude.<$> fallbackLocation,
                               (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SequenceStore where
  toJSON SequenceStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FallbackLocation" Prelude.<$> fallbackLocation,
                  (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" SequenceStore where
  type PropertyType "Description" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {description = Prelude.pure newValue, ..}
instance Property "FallbackLocation" SequenceStore where
  type PropertyType "FallbackLocation" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {fallbackLocation = Prelude.pure newValue, ..}
instance Property "Name" SequenceStore where
  type PropertyType "Name" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {name = newValue, ..}
instance Property "SseConfig" SequenceStore where
  type PropertyType "SseConfig" SequenceStore = SseConfigProperty
  set newValue SequenceStore {..}
    = SequenceStore {sseConfig = Prelude.pure newValue, ..}
instance Property "Tags" SequenceStore where
  type PropertyType "Tags" SequenceStore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SequenceStore {..}
    = SequenceStore {tags = Prelude.pure newValue, ..}